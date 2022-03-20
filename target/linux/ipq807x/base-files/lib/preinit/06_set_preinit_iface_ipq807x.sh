set_preinit_iface() {
	. /lib/functions.sh

	case $(board_name) in
	edgecore,eap102|\
	redmi,ax6|\
	xiaomi,ax3600)
		ifname=eth1
		;;
	qnap,301w)
		ifname=eth3
		;;
	*)
		ifname=eth0
		;;
	esac
}

boot_hook_add preinit_main set_preinit_iface
