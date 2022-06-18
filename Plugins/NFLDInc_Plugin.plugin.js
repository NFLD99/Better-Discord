//META{"name":"NFLDInc_Plugin"}*//

class NFLDInc_Plugin {
    getName() { return "NFLDInc_Plugin"; }

    getVersion() { return "8.0.0"; }

    getAuthor() { return "NFLD99"; }

    getDescription() { return "NFLDInc_Plugin. Fixed By Uri"; }

    constructor() {
        this.addElement = this.addElement.bind(this);
    }

    start() {
        if (window.ZLibrary) ZLibrary.PluginUpdater.checkForUpdate("NFLDInc_Plugin", this.getVersion(), "")
        const UserStore = BdApi.findModuleByProps("getCurrentUser");
        const appMount = document.getElementById("app-mount");
        appMount.classList.add("NFLDInc");
        appMount.setAttribute("NFLDIncCurrentUser", UserStore.getCurrentUser().id);
    }

    addElement(avatarElement, id) {
        if (avatarElement.parentElement.querySelector(".NFLDIncChatUser")) return;
        const newSibling = document.createElement("div");
        newSibling.classList.add("NFLDIncChatUser");
        newSibling.setAttribute("NFLDIncChatUser", id ? id : avatarElement.src.split("/")[4]);
        avatarElement.parentElement.append(newSibling);
    }

    addAttribute(elem, attributeName, id) {
        if (elem !== null) {
            return elem.setAttribute(attributeName, id);
        }
    }

    observer(mutation) {
        if (!mutation.addedNodes.length || !(mutation.addedNodes[0] instanceof Element)) return;
        const added = mutation.addedNodes[0];

        const userPopoutClass = ".userPopout-2j1gM4";
        const userModalClass = ".root-8LYsGj";
        const membersClass = ".member-2gU6Ar";
        const channelsClass = ".channel-1Shao0";
        const messagesClass = ".message-2CShn3";
        const friendsClass = ".peopleListItem-u6dGxF";

        const avatarClass = ".avatar-b5OQ1N";
        const avatarClassInMessages = ".avatar-2e8lTP";

        const allAvatars = added.querySelectorAll(avatarClass);

        let avatarID = null;

        if (allAvatars.length) {
            for (let i = 0; i < allAvatars.length; i++) {
                const elems = allAvatars[i].closest(friendsClass);

                avatarID = allAvatars[i].src.split("/")[4];

                const popoutElem = allAvatars[i].closest(userPopoutClass);
                this.addAttribute(popoutElem, "NFLDIncPopoutUser", avatarID);

                const modalElem = allAvatars[i].closest(userModalClass);
                this.addAttribute(modalElem, "NFLDIncModalUser", avatarID);

                const memberElem = allAvatars[i].closest(membersClass);
                this.addAttribute(memberElem, "NFLDIncMemberUser", avatarID);

                const channelElem = allAvatars[i].closest(channelsClass);
                this.addAttribute(channelElem, "NFLDIncChannelUser", avatarID);

                const friendElem = allAvatars[i].closest(friendsClass);
                this.addAttribute(friendElem, "NFLDIncFriendUser", avatarID);
            }

            return;
        }

        // messages
        const avatarInner = added.querySelectorAll(avatarClassInMessages);
        if (avatarInner.length) {
            for (let i = 0; i < avatarInner.length; i++) {
                const avatarOuter = avatarInner[i].closest(messagesClass);
                avatarID = avatarInner[i].src.split("/")[4];
                if (avatarOuter) {
                    this.addElement(avatarOuter, avatarID);
                    avatarOuter.setAttribute("NFLDIncChatUser", avatarID);
                }
            }
            return;
        }


        if (window.XenoLib) {
            const toast = added.querySelector(".toast-text") || added.querySelector(".bd-toast");
            if (toast) {
                toast.style.display = "none";
                XenoLib.Notifications.danger(toast.textContent, { timeout: 3000 });
            }
        }
    }

    stop() {
        const appMount = document.getElementById("app-mount");
        appMount.classList.remove("NFLDInc");
        appMount.removeAttribute("NFLDIncCurrentUser");
        const allPopoutUserElements = document.querySelectorAll("[NFLDIncPopoutUser]");
        for (let i = 0; i < allPopoutUserElements.length; i++) allPopoutUserElements[i].removeAttribute("NFLDIncPopoutUser");
        const allModalUserElements = document.querySelectorAll("[NFLDIncModalUser]");
        for (let i = 0; i < allModalUserElements.length; i++) allModalUserElements[i].removeAttribute("NFLDIncModalUser");
        const allMemberUserElements = document.querySelectorAll("[NFLDIncMemberUser]");
        for (let i = 0; i < allMemberUserElements.length; i++) allMemberUserElements[i].removeAttribute("NFLDIncMemberUser");
        const allChannelUserElements = document.querySelectorAll("[NFLDIncChannelUser]");
        for (let i = 0; i < allChannelUserElements.length; i++) allChannelUserElements[i].removeAttribute("NFLDIncChannelUser");
        const allChatUserElements = document.querySelectorAll("[NFLDIncChatUser]");
        for (let i = 0; i < allChatUserElements.length; i++) allChatUserElements[i].removeAttribute("NFLDIncChatUser");
        const allFriendUserElements = document.querySelectorAll("[NFLDIncFriendUser]");
        for (let i = 0; i < allFriendUserElements.length; i++) allFriendUserElements[i].removeAttribute("NFLDIncFriendUser");
    }
}