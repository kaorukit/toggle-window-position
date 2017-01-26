tell application "System Events"
    set topProcess to item 1 of (every process whose frontmost is true)
    tell topProcess
        set topDocWindow to item 1 of (every window whose subrole is "AXStandardWindow")
        if (size of topDocWindow as text) = "1440873" then
            set position of topDocWindow to {-256, -1300}
            set size of topDocWindow to {1920, 950}
        else if (size of topDocWindow as text) = "1920950" then
            set position of topDocWindow to {704, -1300}
            set size of topDocWindow to {960, 950}
        else if (position of topDocWindow as text) starts with "704" then
            set position of topDocWindow to {-256, -1300}
            set size of topDocWindow to {960, 950}
        else
            set position of topDocWindow to {0, 0}
            set size of topDocWindow to {1440, 873}
        end if
    end tell
end tell
