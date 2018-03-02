import XMonad
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Config.Desktop

main :: IO ()
main =
  let
    myBar = "xmobar"
    myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "[" "]" }
    toggleStrutsKey XConfig {} = (mod4Mask, xK_b)
    myConfig = desktopConfig {
      modMask = mod4Mask,
      manageHook = manageDocks <+> manageHook desktopConfig,
      layoutHook = avoidStruts $ layoutHook desktopConfig,
      startupHook =
        let startupPrograms = [
              "~/bin/set-path",
              "pgrep stalonetray || stalonetray",
              "xscreensaver",
              "xrdb -load ~/.Xdefaults",
              "xrandr --output VGA1 --auto --above LVDS1 --auto",
              "~/bin/remap-caps-to-ctrl",
              "nm-applet"
              ]
        in sequence_ $ map spawn startupPrograms,
      terminal = "xterm"
    }
    myKeys = [
      ((mod4Mask, xK_Left), spawn "amixer -q sset Master toggle"),
      ((mod4Mask, xK_Up), spawn "amixer -q sset Master 5%+"),
      ((mod4Mask, xK_Down), spawn "amixer -q sset Master 5%-"),
      ((mod4Mask, xK_i), spawn "chromium"),
      ((mod4Mask, xK_Return), spawn "xterm"),
      ((mod4Mask .|. shiftMask, xK_l), spawn "xscreensaver-command -lock")
      ]
    action = statusBar myBar myPP toggleStrutsKey $ additionalKeys myConfig myKeys
  in action >>= xmonad

