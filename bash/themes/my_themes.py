from powerline_shell.themes.default import DefaultColor

dark0 = 235
dark1 = 237
dark2 = 239
dark3 = 241
dark4 = 243

light0 = 229
light1 = 223
light2 = 250
light3 = 248
light4 = 246

dark_gray  = 245
light_gray = 244

neutral_red    = 124
neutral_green  = 106
neutral_yellow = 172
neutral_blue   = 66
neutral_purple = 132
neutral_aqua   = 72
neutral_orange = 166

bright_red    = 167
bright_green  = 142
bright_yellow = 214
bright_blue   = 109
bright_purple = 175
bright_aqua   = 108
bright_orange = 208

faded_red    = 88
faded_green  = 100
faded_yellow = 136
faded_blue   = 24
faded_purple = 96
faded_aqua   = 66
faded_orange = 130

class Color(DefaultColor):
    """Basic theme which only uses colors in 0-15 range"""
    USERNAME_FG = 7
    USERNAME_BG = 0
    USERNAME_ROOT_BG = 1

    HOSTNAME_FG = 8
    HOSTNAME_BG = 7

    HOME_SPECIAL_DISPLAY = False
    PATH_BG = 8  # dark grey
    PATH_FG = 7  # light grey
    CWD_FG = 15  # white
    SEPARATOR_FG = 12

    READONLY_BG = 1
    READONLY_FG = 15

    REPO_CLEAN_BG = 2   # green
    REPO_CLEAN_FG = 0   # black
    REPO_DIRTY_BG = 1   # red
    REPO_DIRTY_FG = 15  # white

    JOBS_FG = 14
    JOBS_BG = 8

    CMD_PASSED_BG = 8
    CMD_PASSED_FG = 15
    CMD_FAILED_BG = 11
    CMD_FAILED_FG = 0

    SVN_CHANGES_BG = REPO_DIRTY_BG
    SVN_CHANGES_FG = REPO_DIRTY_FG

    GIT_AHEAD_BG = dark2
    GIT_AHEAD_FG = light3
    GIT_BEHIND_BG = dark2
    GIT_BEHIND_FG = light3
    GIT_STAGED_BG = neutral_green
    GIT_STAGED_FG = light0
    GIT_NOTSTAGED_BG = neutral_orange
    GIT_NOTSTAGED_FG = light0
    GIT_UNTRACKED_BG = faded_red
    GIT_UNTRACKED_FG = light0
    GIT_CONFLICTED_BG = neutral_red
    GIT_CONFLICTED_FG = light0
    GIT_STASH_BG = neutral_yellow
    GIT_STASH_FG = dark0

    VIRTUAL_ENV_BG = 2
    VIRTUAL_ENV_FG = 0

    AWS_PROFILE_FG = 14
    AWS_PROFILE_BG = 8

    TIME_FG = 8
    TIME_BG = 7
