echo $PATH
pacman --sync --noconfirm --needed base-devel
pacman --sync --noconfirm --needed p7zip
pacman --sync --noconfirm --needed zlib

wget http://www.tortall.net/projects/yasm/releases/yasm-1.3.0-win64.exe -O /bin/yasm.exe

./configure \
--target-os=win64 \
--arch=x86_64 \
--toolchain=msvc \
--enable-asm \
--enable-yasm \
--enable-gpl \
--enable-version3 \
--enable-sdl2 \
--enable-fontconfig \
--enable-gnutls \
--enable-iconv \
--enable-libass \
--enable-libdav1d \
--enable-libbluray \
--enable-libfreetype \
--enable-libmp3lame \
--enable-libopencore-amrnb \
--enable-libopencore-amrwb \
--enable-libopenjpeg \
--enable-libopus \
--enable-libshine \
--enable-libsnappy \
--enable-libsoxr \
--enable-libtheora \
--enable-libtwolame \
--enable-libvpx \
--enable-libwavpack \
--enable-libwebp \
--enable-libx264 \
--enable-libx265 \
--enable-libxml2 \
--enable-libzimg \
--enable-lzma \
--enable-zlib \
--enable-gmp \
--enable-libvidstab \
--enable-libvorbis \
--enable-libvo-amrwbenc \
--enable-libmysofa \
--enable-libspeex \
--enable-libxvid \
--enable-libaom \
--enable-libmfx \
--enable-amf \
--enable-ffnvcodec \
--enable-cuvid \
--enable-d3d11va \
--enable-nvenc \
--enable-nvdec \
--enable-dxva2 \
--enable-avisynth \
--enable-libopenmpt

make
make install