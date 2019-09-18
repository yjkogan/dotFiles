#!/usr/bin/env python

class bcolors:
    BLACK = '\033[90m'
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    BLUE = '\033[94m'
    PURPLE = '\033[95m'
    CYAN = '\033[96m'
    WHITE = '\033[97m'
    ENDC = '\033[0m'

def yes_or_no(question):
    # The string below isn't printed. Too lazy right now to fix it to print.
    while (bcolors.YELLOW + "Please respond with 'y' or 'n'" + bcolors.ENDC):
        reply = str(raw_input(question + bcolors.GREEN + ' (y/n): ' + bcolors.ENDC)).lower().strip()
        if reply[:1] == 'y':
            return True
        if reply[:1] == 'n':
            return False

def install_all():
  install_1password()
  install_firefox()
  install_chrome()
  install_slack()
  install_iterm2()
  install_moom()
  install_things()
  install_flux()
  install_vpn()

def install_stub(app_name):
  if not yes_or_no(bcolors.GREEN + "Do you want to install " + app_name + "?" + bcolors.ENDC):
    print bcolors.YELLOW + "Skipping " + app_name + bcolors.ENDC
    return

  print bcolors.CYAN + "Installing " + app_name + bcolors.ENDC
  print ""
  print bcolors.YELLOW + "Not yet implemented: please do this manually" + bcolors.ENDC
  print ""
  if yes_or_no(bcolors.GREEN + "Have you installed " + app_name + " now?" + bcolors.ENDC):
    print bcolors.CYAN + app_name + " installed" + bcolors.ENDC
  else:
    print bcolors.RED + app_name + " not installed..." + bcolors.ENDC

def install_1password():
  install_stub("1Password")

def install_firefox():
  install_stub("Firefox")

def install_chrome():
    install_stub("Chrome")

def install_slack():
    install_stub("Slack")

def install_iterm2():
    install_stub("iTerm2")

def install_moom():
    install_stub("Moom")

def install_flux():
    install_stub("Flux")

def install_things():
    install_stub("Things 3")

def install_vpn():
    print bcolors.CYAN + "Don't forget to install your VPN!" + bcolors.ENDC

if __name__ == "__main__":
    install_all()

