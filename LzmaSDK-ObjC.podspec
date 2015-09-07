Pod::Spec.new do |s|

# Common settings
  s.name         = "LzmaSDK-ObjC"
  s.version      = "0.0.2"
  s.summary      = "Lzma SDK for Objective-C based on extended functionality of the C++ LZMA code"
  s.description  = <<-DESC
It's not yet another wrapper arround C part of the Lzma library with all it's limitations.
The main advantages is:
 - List, extract 7z files (Lzma & Lzma2 compression method).
 - List, extract encrypted (password protected) 7z files (Lzma & Lzma2 compression method).
 - List, extract encrypted (password protected) + encrypted header (no visible content, files list, without password) 7z files (Lzma & Lzma2 compression method).
 - Manage memory allocations during listing/extracting.
 - Setuped for using less than 500Kb for listing/extracting, can be easly changed runtime (no hardcoded definitions).
 - Manage IO read/write operations, aslo can be easly changed runtime (no hardcoded definitions).
 - Track smoothed progress, which becomes possible with prev.
                      DESC
  s.homepage     = "https://github.com/OlehKulykov/LzmaSDK-ObjC"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Oleh Kulykov" => "info@resident.name" }
  s.source       = { :git => 'https://github.com/OlehKulykov/LzmaSDK-ObjC.git', :tag => s.version.to_s, :submodules => "true" }

# Platforms
  s.ios.deployment_target = "5.0"
  s.osx.deployment_target = "10.7"

# Build  
  s.public_header_files = 'src/LzmaSDKObjCTypes.h', 'src/LzmaSDKObjCReader.h', 'src/LzmaSDKObjCItem.h', 'src/LzmaSDKObjC.h'
  s.source_files = 'src/*.{h,cpp,mm}',
    'lzma/CPP/7zip/*.{h}',
    'lzma/CPP/7zip/Crypto/*.{h}',
    'lzma/CPP/7zip/Crypto/7zAes.cpp',
    'lzma/CPP/7zip/Crypto/7zAesRegister.cpp',
    'lzma/CPP/7zip/Crypto/MyAes.cpp',
    'lzma/CPP/7zip/Crypto/MyAesReg.cpp',
    'lzma/CPP/7zip/Crypto/RandGen.cpp',
    'lzma/CPP/7zip/Archive/7z/*.{h}',
    'lzma/CPP/7zip/Archive/7z/7zRegister.cpp',
    'lzma/CPP/7zip/Archive/7z/7zSpecStream.cpp',
    'lzma/CPP/7zip/Archive/7z/7zExtract.cpp',
    'lzma/CPP/7zip/Archive/7z/7zProperties.cpp',
    'lzma/CPP/7zip/Archive/7z/7zDecode.cpp',
    'lzma/CPP/7zip/Archive/7z/7zEncode.cpp',
    'lzma/CPP/7zip/Archive/7z/7zFolderInStream.cpp',
    'lzma/CPP/7zip/Archive/7z/7zUpdate.cpp',
    'lzma/CPP/7zip/Archive/7z/7zHeader.cpp',
    'lzma/CPP/7zip/Archive/7z/7zOut.cpp',
    'lzma/CPP/7zip/Archive/7z/7zHandlerOut.cpp',
    'lzma/CPP/7zip/Archive/7z/7zIn.cpp',
    'lzma/CPP/7zip/Archive/7z/7zHandler.cpp',
    'lzma/CPP/7zip/Archive/7z/StdAfx.cpp',
    'lzma/CPP/7zip/Archive/*.{h}',
    'lzma/CPP/7zip/Archive/XzHandler.cpp',
    'lzma/CPP/7zip/Archive/LzmaHandler.cpp',
    'lzma/CPP/7zip/Archive/ArchiveExports.cpp',
    'lzma/CPP/7zip/Archive/DllExports2.cpp',
    'lzma/CPP/7zip/Archive/Common/*.{h}',
    'lzma/CPP/7zip/Archive/Common/ItemNameUtils.cpp',
    'lzma/CPP/7zip/Archive/Common/CoderMixer2.cpp',
    'lzma/CPP/7zip/Archive/Common/DummyOutStream.cpp',
    'lzma/CPP/7zip/Archive/Common/HandlerOut.cpp',
    'lzma/CPP/7zip/Compress/*.{h}',
    'lzma/CPP/7zip/Compress/BcjCoder.cpp',
    'lzma/CPP/7zip/Compress/BcjRegister.cpp',
    'lzma/CPP/7zip/Compress/CopyCoder.cpp',
    'lzma/CPP/7zip/Compress/CodecExports.cpp',
    'lzma/CPP/7zip/Compress/LzmaDecoder.cpp',
    'lzma/CPP/7zip/Compress/LzmaEncoder.cpp',
    'lzma/CPP/7zip/Compress/LzmaRegister.cpp',
    'lzma/CPP/7zip/Compress/Lzma2Decoder.cpp',
    'lzma/CPP/7zip/Compress/Lzma2Encoder.cpp',
    'lzma/CPP/7zip/Compress/Lzma2Register.cpp',
    'lzma/CPP/7zip/Common/*.{h}',
    'lzma/CPP/7zip/Common/LimitedStreams.cpp',
    'lzma/CPP/7zip/Common/StreamObjects.cpp',
    'lzma/CPP/7zip/Common/InOutTempBuffer.cpp',
    'lzma/CPP/7zip/Common/StreamBinder.cpp',
    'lzma/CPP/7zip/Common/VirtThread.cpp',
    'lzma/CPP/7zip/Common/OutBuffer.cpp',
    'lzma/CPP/7zip/Common/MethodProps.cpp',
    'lzma/CPP/7zip/Common/PropId.cpp',
    'lzma/CPP/7zip/Common/ProgressUtils.cpp',
    'lzma/CPP/7zip/Common/FilterCoder.cpp',
    'lzma/CPP/7zip/Common/CWrappers.cpp',
    'lzma/CPP/7zip/Common/StreamUtils.cpp',
    'lzma/CPP/7zip/Common/CreateCoder.cpp',
    'lzma/CPP/7zip/Common/FileStreams.cpp',
    'lzma/CPP/7zip/Common/LockedStream.cpp',
    'lzma/CPP/Windows/*.{h}',
    'lzma/CPP/Windows/PropVariantConv.cpp',
    'lzma/CPP/Windows/System.cpp',
    'lzma/CPP/Windows/PropVariant.cpp',
    'lzma/CPP/Windows/FileName.cpp',
    'lzma/CPP/Windows/FileFind.cpp',
    'lzma/CPP/Windows/FileDir.cpp',
    'lzma/CPP/Windows/DLL.cpp',
    'lzma/CPP/Common/*.{h}',
    'lzma/CPP/Common/Sha256Reg.cpp',
    'lzma/CPP/Common/XzCrc64Reg.cpp',
    'lzma/CPP/Common/CrcReg.cpp',
    'lzma/CPP/Common/Wildcard.cpp',
    'lzma/CPP/Common/StringToInt.cpp',
    'lzma/CPP/Common/C_FileIO.cpp',
    'lzma/CPP/Common/MyString.cpp',
    'lzma/CPP/Common/StringConvert.cpp',
    'lzma/CPP/Common/IntToString.cpp',
    'lzma/CPP/Common/MyWindows.cpp',
    'lzma/C/*.{h}',
    'lzma/C/AesOpt.c',
    'lzma/C/Aes.c',
    'lzma/C/XzCrc64Opt.c',
    'lzma/C/Sha256.c',
    'lzma/C/Delta.c',
    'lzma/C/7zCrcOpt.c',
    'lzma/C/CpuArch.c',
    'lzma/C/7zCrc.c',
    'lzma/C/XzCrc64.c',
    'lzma/C/Bra86.c',
    'lzma/C/BraIA64.c',
    'lzma/C/Bra.c',
    'lzma/C/XzEnc.c',
    'lzma/C/XzIn.c',
    'lzma/C/Xz.c',
    'lzma/C/XzDec.c',
    'lzma/C/7zStream.c',
    'lzma/C/Alloc.c',
    'lzma/C/MtCoder.c',
    'lzma/C/LzFind.c',
    'lzma/C/LzFindMt.c',
    'lzma/C/Lzma2Dec.c',
    'lzma/C/Lzma2Enc.c',
    'lzma/C/LzmaDec.c',
    'lzma/C/LzmaEnc.c',
    'lzma/C/Threads.c'
  
  s.compiler_flags = '-DLZMASDKOBJC=1'
#  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/LzmaSDK-ObjC/lzma/CPP/7zip/Crypto" "${PODS_ROOT}/LzmaSDK-ObjC/lzma/CPP/7zip/Archive/7z" "${PODS_ROOT}/LzmaSDK-ObjC/lzma/CPP/7zip/Archive" "${PODS_ROOT}/LzmaSDK-ObjC/lzma/CPP/7zip/Archive/Common" "${PODS_ROOT}/LzmaSDK-ObjC/lzma/CPP/7zip/Compress" "${PODS_ROOT}/LzmaSDK-ObjC/lzma/CPP/7zip/Common" "${PODS_ROOT}/LzmaSDK-ObjC/lzma/CPP/Windows" "${PODS_ROOT}/LzmaSDK-ObjC/lzma/CPP/Common" "${PODS_ROOT}/LzmaSDK-ObjC/lzma/C"' }
  s.libraries    = 'stdc++'
#  s.framework = 'CoreFoundation'
  s.requires_arc = true

end
