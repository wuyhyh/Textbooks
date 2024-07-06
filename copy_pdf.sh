# 这个脚本用于创建一个副本文件夹，包含所有的pdf文件

# 源文件夹路径（需要复制的文件夹）
source_dir=${PWD}

# 目标文件夹路径（将PDF文件复制到这个文件夹）
target_dir=${PWD}"-mirror"

# 确保目标文件夹存在，如果不存在则创建
mkdir -p "$target_dir"

# 查找源文件夹及其子目录下的所有PDF文件并复制到目标文件夹
find "$source_dir" -type f -name "*.pdf" -exec cp -P {} "$target_dir" \;

echo "PDF files have been copied to $target_dir"
