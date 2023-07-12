echo "Delete build dir"
rm -rf build

echo "Re-create empty build dir"
mkdir -p build

echo "Run the tera-cli crate (with backtrace)"
# Inserts the output into build/index.html
RUST_BACKTRACE=1 tera --template templates/index2.tera --include empty.json > build/index.html

echo "Copy files from public dir to build dir"
cp public/* build/

echo "Done!"
