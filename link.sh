if [ $TARGET_DEVICE_PLATFORM_NAME = "iphonesimulator" ]; then
    if [ $(uname -m) = "arm64" ]; then
        cp CoreKit/target/aarch64-apple-ios-sim/debug/libcore_kit.a \
            RustyApp/CoreKit/CoreKit.a;
    else
        cp CoreKit/target/x86_64-apple-ios/debug/libcore_kit.a \
            RustyApp/CoreKit/CoreKit.a;
    fi;
else
    cp CoreKit/target/aarch64-apple-ios/debug/libcore_kit.a \
        RustyApp/CoreKit/CoreKit.a;
fi;