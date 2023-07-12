cd CoreKit;

if [ $TARGET_DEVICE_PLATFORM_NAME = "iphonesimulator" ]; then
    if [ $(uname -m) = "arm64" ]; then
        cargo build --target aarch64-apple-ios-sim;
    else
        cargo build --target x86_64-apple-ios;
    fi;
else
    cargo build --target aarch64-apple-ios;
fi;
