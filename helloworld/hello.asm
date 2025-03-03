# | Register | Usage  | Type    | Description            |
# | -------- | ------ | ------- | ---------------------- |
# | `$v0`    | output | address | null-terminated string |

.data
msg: .asciiz "Hello, World!"

.text
.globl main
main:
    li $v0, 4      # syscall for print_string
    la $a0, msg    # load address of msg
    syscall        # make system call

    li $v0, 10     # syscall for exit
    syscall
