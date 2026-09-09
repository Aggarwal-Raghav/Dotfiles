# fzf.fish plugin configuration

# Exact match for your old directory preview (tree + head)
function _custom_fzf_dir_preview
    tree -C $argv | head -50
end
set -gx fzf_preview_dir_cmd _custom_fzf_dir_preview

# Exact match for your old file preview (bat + line-range)
function _custom_fzf_file_preview
    bat --color=always --line-range :50 $argv
end
set -gx fzf_preview_file_cmd _custom_fzf_file_preview

# Include hidden files in file searches (like your old fd command did)
set -gx fzf_fd_opts --hidden

# Use your beautiful git log format from your 'lg' git alias!
set -gx fzf_git_log_format '%C(bold magenta)%h %C(reset)-%C(auto)%d %C(reset)%s %C(blue)<%an> %C(reset)%C(green)%ar%C(cyan)(%ad)'

# Use diff-so-fancy for Git Status and Git Log diff previews
set -gx fzf_diff_highlighter diff-so-fancy

# Custom fzf options to override default height logic (Fullscreen)
set -gx fzf_directory_opts --no-height
set -gx fzf_git_log_opts --no-height
set -gx fzf_git_status_opts --no-height
set -gx fzf_history_opts --no-height
set -gx fzf_processes_opts --no-height
set -gx fzf_variables_opts --no-height
