function fish_prompt
	test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test "$USER" = 'root'
    and echo (set_color red)"#"

    # Main
		set -g fish_prompt_pwd_dir_length 20
    printf (set_color b48ead)(prompt_pwd)'\n'
		echo (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
end
