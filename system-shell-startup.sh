#!/bin/bash
# 路径到你的程序
PROGRAM_PATH="/usr/share/system-shell/system64.elf"
chmod 777 $PROGRAM_PATH
# 确保程序路径存在
if [ ! -f "$PROGRAM_PATH" ]; then
    echo "Error: $PROGRAM_PATH does not exist."
    exit 1
fi

# 启动程序
echo "Starting system-shell-startup..."
$PROGRAM_PATH

# 检查程序是否成功启动
if [ $? -eq 0 ]; then
    echo "system-shell-startup started successfully."
else
    echo "system-shell-startup failed to start."
    exit 1
fi

exit 0