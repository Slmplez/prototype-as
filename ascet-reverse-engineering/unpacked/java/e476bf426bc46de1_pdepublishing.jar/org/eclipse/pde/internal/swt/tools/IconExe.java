/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.swt.tools;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Vector;

public class IconExe {
    public static final String VERSION = "20050124";
    static final boolean DEBUG = false;
    IconResInfo[] iconInfo = null;
    int iconCnt;
    static final int IMAGE_DOS_SIGNATURE = 23117;
    static final int IMAGE_NT_SIGNATURE = 17744;
    static final int IMAGE_DIRECTORY_ENTRY_RESOURCE = 2;
    static final int RES_ICON = 1;
    static final int RT_ICON = 3;
    static final int RT_GROUP_ICON = 14;
    static final int BMPHeaderFixedSize = 40;
    static final int IMAGE_NT_OPTIONAL_HDR64_MAGIC = 523;
    static final int IMAGE_NT_OPTIONAL_HDR32_MAGIC = 267;

    public static void main(String[] args) throws Exception {
        if (args.length < 2) {
            System.err.println("Usage: IconExe <windows executable> <ico file>");
            return;
        }
        ImageLoader loader = new ImageLoader();
        ArrayList<ImageData> images = new ArrayList<ImageData>();
        int i = 1;
        while (i < args.length) {
            try {
                ImageData[] current = loader.load(args[i]);
                int j = 0;
                while (j < current.length) {
                    images.add(current[j]);
                    ++j;
                }
            }
            catch (RuntimeException runtimeException) {}
            ++i;
        }
        ImageData[] data = new ImageData[images.size()];
        int nMissing = IconExe.unloadIcons(args[0], data = images.toArray(data));
        if (nMissing != 0) {
            System.err.println("Error - " + nMissing + " icon(s) not replaced in " + args[0] + " using " + args[1]);
        }
    }

    static ImageData[] loadIcons(String program) throws FileNotFoundException, IOException {
        RandomAccessFile raf = new RandomAccessFile(program, "r");
        IconExe iconExe = new IconExe();
        IconResInfo[] iconInfo = iconExe.getIcons(raf);
        ImageData[] data = new ImageData[iconInfo.length];
        int i = 0;
        while (i < data.length) {
            data[i] = iconInfo[i].data;
            ++i;
        }
        raf.close();
        return data;
    }

    static int unloadIcons(String program, ImageData[] icons) throws FileNotFoundException, IOException {
        IconExe iconExe = new IconExe();
        RandomAccessFile raf = new RandomAccessFile(program, "rw");
        IconResInfo[] iconInfo = iconExe.getIcons(raf);
        if (iconInfo.length == 0) {
            System.err.println("Warning - no icons detected in \"" + program + "\".");
            raf.close();
            return 0;
        }
        int cnt = 0;
        int i = 0;
        while (i < iconInfo.length) {
            int j = 0;
            while (j < icons.length) {
                if (icons[j] != null && iconInfo[i].data.width == icons[j].width && iconInfo[i].data.height == icons[j].height && iconInfo[i].data.depth == icons[j].depth) {
                    raf.seek(iconInfo[i].offset);
                    IconExe.unloadIcon(raf, icons[j]);
                    ++cnt;
                    break;
                }
                ++j;
            }
            ++i;
        }
        raf.close();
        return iconInfo.length - cnt;
    }

    IconResInfo[] getIcons(RandomAccessFile raf) throws IOException {
        this.iconInfo = new IconResInfo[4];
        this.iconCnt = 0;
        IMAGE_DOS_HEADER imageDosHeader = new IMAGE_DOS_HEADER();
        IconExe.read(raf, imageDosHeader);
        if (imageDosHeader.e_magic != 23117) {
            return new IconResInfo[0];
        }
        int imageNtHeadersOffset = imageDosHeader.e_lfanew;
        raf.seek(imageNtHeadersOffset);
        IMAGE_NT_HEADERS imageNtHeaders = new IMAGE_NT_HEADERS();
        IconExe.read(raf, imageNtHeaders);
        if (imageNtHeaders.Signature != 17744) {
            return new IconResInfo[0];
        }
        int resourcesRVA = imageNtHeaders.OptionalHeader.DataDirectory[2].VirtualAddress;
        if (resourcesRVA == 0) {
            return new IconResInfo[0];
        }
        IMAGE_SECTION_HEADER imageSectionHeader = new IMAGE_SECTION_HEADER();
        int firstSectionOffset = imageNtHeadersOffset + 24 + imageNtHeaders.FileHeader.SizeOfOptionalHeader;
        raf.seek(firstSectionOffset);
        boolean found = false;
        int i = 0;
        while (i < imageNtHeaders.FileHeader.NumberOfSections) {
            IconExe.read(raf, imageSectionHeader);
            if (resourcesRVA >= imageSectionHeader.VirtualAddress && resourcesRVA < imageSectionHeader.VirtualAddress + imageSectionHeader.Misc_VirtualSize) {
                found = true;
                break;
            }
            ++i;
        }
        if (!found) {
            return new IconResInfo[0];
        }
        int delta = imageSectionHeader.VirtualAddress - imageSectionHeader.PointerToRawData;
        int imageResourceDirectoryOffset = resourcesRVA - delta;
        this.dumpResourceDirectory(raf, imageResourceDirectoryOffset, imageResourceDirectoryOffset, delta, 0, 0, false);
        if (this.iconCnt < this.iconInfo.length) {
            IconResInfo[] newArray = new IconResInfo[this.iconCnt];
            System.arraycopy(this.iconInfo, 0, newArray, 0, this.iconCnt);
            this.iconInfo = newArray;
        }
        return this.iconInfo;
    }

    void dumpResourceDirectory(RandomAccessFile raf, int imageResourceDirectoryOffset, int resourceBase, int delta, int type, int level, boolean rt_icon_root) throws IOException {
        IMAGE_RESOURCE_DIRECTORY imageResourceDirectory = new IMAGE_RESOURCE_DIRECTORY();
        raf.seek(imageResourceDirectoryOffset);
        IconExe.read(raf, imageResourceDirectory);
        IMAGE_RESOURCE_DIRECTORY_ENTRY[] imageResourceDirectoryEntries = new IMAGE_RESOURCE_DIRECTORY_ENTRY[imageResourceDirectory.NumberOfIdEntries];
        int i = 0;
        while (i < imageResourceDirectoryEntries.length) {
            imageResourceDirectoryEntries[i] = new IMAGE_RESOURCE_DIRECTORY_ENTRY();
            IconExe.read(raf, imageResourceDirectoryEntries[i]);
            ++i;
        }
        i = 0;
        while (i < imageResourceDirectoryEntries.length) {
            if (imageResourceDirectoryEntries[i].DataIsDirectory) {
                this.dumpResourceDirectory(raf, imageResourceDirectoryEntries[i].OffsetToDirectory + resourceBase, resourceBase, delta, imageResourceDirectoryEntries[i].Id, level + 1, rt_icon_root ? true : type == 3);
            } else {
                IMAGE_RESOURCE_DIRECTORY_ENTRY irde = imageResourceDirectoryEntries[i];
                IMAGE_RESOURCE_DATA_ENTRY data = new IMAGE_RESOURCE_DATA_ENTRY();
                raf.seek(imageResourceDirectoryEntries[i].OffsetToData + resourceBase);
                IconExe.read(raf, data);
                if (rt_icon_root) {
                    this.iconInfo[this.iconCnt] = new IconResInfo();
                    this.iconInfo[this.iconCnt].data = IconExe.parseIcon(raf, data.OffsetToData - delta, data.Size);
                    this.iconInfo[this.iconCnt].offset = data.OffsetToData - delta;
                    this.iconInfo[this.iconCnt].size = data.Size;
                    ++this.iconCnt;
                    if (this.iconCnt == this.iconInfo.length) {
                        IconResInfo[] newArray = new IconResInfo[this.iconInfo.length + 4];
                        System.arraycopy(this.iconInfo, 0, newArray, 0, this.iconInfo.length);
                        this.iconInfo = newArray;
                    }
                }
            }
            ++i;
        }
    }

    static ImageData parseIcon(RandomAccessFile raf, int offset, int size) throws IOException {
        raf.seek(offset);
        BITMAPINFO bitmapInfo = new BITMAPINFO();
        IconExe.read(raf, bitmapInfo);
        bitmapInfo.bmiHeader.biHeight /= 2;
        int width = bitmapInfo.bmiHeader.biWidth;
        int height = bitmapInfo.bmiHeader.biHeight;
        int depth = bitmapInfo.bmiHeader.biBitCount;
        PaletteData palette = IconExe.loadPalette(bitmapInfo.bmiHeader, raf);
        byte[] shapeData = IconExe.loadData(bitmapInfo.bmiHeader, raf);
        bitmapInfo.bmiHeader.biBitCount = 1;
        byte[] maskData = IconExe.loadData(bitmapInfo.bmiHeader, raf);
        maskData = IconExe.convertPad(maskData, width, height, 1, 4, 2);
        IconExe.bitInvertData(maskData, 0, maskData.length);
        return ImageData.internal_new(width, height, depth, palette, 4, shapeData, 2, maskData, null, -1, -1, 3, 0, 0, 0, 0);
    }

    static byte[] bitInvertData(byte[] data, int startIndex, int endIndex) {
        int i = startIndex;
        while (i < endIndex) {
            data[i] = (byte)(255 - data[i - startIndex]);
            ++i;
        }
        return data;
    }

    static final byte[] convertPad(byte[] data, int width, int height, int depth, int pad, int newPad) {
        if (pad == newPad) {
            return data;
        }
        int stride = (width * depth + 7) / 8;
        int bpl = (stride + (pad - 1)) / pad * pad;
        int newBpl = (stride + (newPad - 1)) / newPad * newPad;
        byte[] newData = new byte[height * newBpl];
        int srcIndex = 0;
        int destIndex = 0;
        int y = 0;
        while (y < height) {
            System.arraycopy(data, srcIndex, newData, destIndex, newBpl);
            srcIndex += bpl;
            destIndex += newBpl;
            ++y;
        }
        return newData;
    }

    static PaletteData loadPalette(BITMAPINFOHEADER bih, RandomAccessFile raf) throws IOException {
        int depth = bih.biBitCount;
        if (depth <= 8) {
            int numColors = bih.biClrUsed;
            if (numColors == 0) {
                numColors = 1 << depth;
            } else if (numColors > 256) {
                numColors = 256;
            }
            byte[] buf = new byte[numColors * 4];
            raf.read(buf);
            return IconExe.paletteFromBytes(buf, numColors);
        }
        if (depth == 16) {
            return new PaletteData(31744, 992, 31);
        }
        if (depth == 24) {
            return new PaletteData(255, 65280, 0xFF0000);
        }
        return new PaletteData(65280, 0xFF0000, -16777216);
    }

    static PaletteData paletteFromBytes(byte[] bytes, int numColors) {
        int bytesOffset = 0;
        RGB[] colors = new RGB[numColors];
        int i = 0;
        while (i < numColors) {
            colors[i] = new RGB(bytes[bytesOffset + 2] & 0xFF, bytes[bytesOffset + 1] & 0xFF, bytes[bytesOffset] & 0xFF);
            bytesOffset += 4;
            ++i;
        }
        return new PaletteData(colors);
    }

    static byte[] loadData(BITMAPINFOHEADER bih, RandomAccessFile raf) throws IOException {
        int stride = (bih.biWidth * bih.biBitCount + 7) / 8;
        stride = (stride + 3) / 4 * 4;
        byte[] data = IconExe.loadData(bih, raf, stride);
        IconExe.flipScanLines(data, stride, bih.biHeight);
        return data;
    }

    static void flipScanLines(byte[] data, int stride, int height) {
        int i1 = 0;
        int i2 = (height - 1) * stride;
        int i = 0;
        while (i < height / 2) {
            int index = 0;
            while (index < stride) {
                byte b = data[index + i1];
                data[index + i1] = data[index + i2];
                data[index + i2] = b;
                ++index;
            }
            i1 += stride;
            i2 -= stride;
            ++i;
        }
    }

    static byte[] loadData(BITMAPINFOHEADER bih, RandomAccessFile raf, int stride) throws IOException {
        int dataSize = bih.biHeight * stride;
        byte[] data = new byte[dataSize];
        int cmp = bih.biCompression;
        if (cmp == 0) {
            raf.read(data);
        }
        return data;
    }

    static void unloadIcon(RandomAccessFile raf, ImageData icon) throws IOException {
        int sizeImage = ((icon.width * icon.depth + 31) / 32 * 4 + (icon.width + 31) / 32 * 4) * icon.height;
        IconExe.write4(raf, 40);
        IconExe.write4(raf, icon.width);
        IconExe.write4(raf, icon.height * 2);
        IconExe.writeU2(raf, 1);
        IconExe.writeU2(raf, icon.depth);
        IconExe.write4(raf, 0);
        IconExe.write4(raf, sizeImage);
        IconExe.write4(raf, 0);
        IconExe.write4(raf, 0);
        IconExe.write4(raf, icon.palette.colors != null ? icon.palette.colors.length : 0);
        IconExe.write4(raf, 0);
        byte[] rgbs = IconExe.paletteToBytes(icon.palette);
        raf.write(rgbs);
        IconExe.unloadShapeData(raf, icon);
        IconExe.unloadMaskData(raf, icon);
    }

    static byte[] paletteToBytes(PaletteData pal) {
        int n = pal.colors == null ? 0 : (pal.colors.length < 256 ? pal.colors.length : 256);
        byte[] bytes = new byte[n * 4];
        int offset = 0;
        int i = 0;
        while (i < n) {
            RGB col = pal.colors[i];
            bytes[offset] = (byte)col.blue;
            bytes[offset + 1] = (byte)col.green;
            bytes[offset + 2] = (byte)col.red;
            offset += 4;
            ++i;
        }
        return bytes;
    }

    static void unloadMaskData(RandomAccessFile raf, ImageData icon) {
        ImageData mask = icon.getTransparencyMask();
        int bpl = (icon.width + 7) / 8;
        int pad = mask.scanlinePad;
        int srcBpl = (bpl + pad - 1) / pad * pad;
        int destBpl = (bpl + 3) / 4 * 4;
        byte[] buf = new byte[destBpl];
        int offset = (icon.height - 1) * srcBpl;
        byte[] data = mask.data;
        try {
            int i = 0;
            while (i < icon.height) {
                System.arraycopy(data, offset, buf, 0, bpl);
                IconExe.bitInvertData(buf, 0, bpl);
                raf.write(buf, 0, destBpl);
                offset -= srcBpl;
                ++i;
            }
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }

    static void unloadShapeData(RandomAccessFile raf, ImageData icon) {
        int bpl = (icon.width * icon.depth + 7) / 8;
        int pad = icon.scanlinePad;
        int srcBpl = (bpl + pad - 1) / pad * pad;
        int destBpl = (bpl + 3) / 4 * 4;
        byte[] buf = new byte[destBpl];
        int offset = (icon.height - 1) * srcBpl;
        byte[] data = icon.data;
        try {
            int i = 0;
            while (i < icon.height) {
                System.arraycopy(data, offset, buf, 0, bpl);
                raf.write(buf, 0, destBpl);
                offset -= srcBpl;
                ++i;
            }
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }

    static boolean readIconGroup(RandomAccessFile raf, int offset, int size) throws IOException {
        raf.seek(offset);
        NEWHEADER newHeader = new NEWHEADER();
        IconExe.read(raf, newHeader);
        if (newHeader.ResType != 1) {
            return false;
        }
        RESDIR[] resDir = new RESDIR[newHeader.ResCount];
        int i = 0;
        while (i < newHeader.ResCount) {
            resDir[i] = new RESDIR();
            IconExe.read(raf, resDir[i]);
            ++i;
        }
        return true;
    }

    static void copyFile(String src, String dst) throws FileNotFoundException, IOException {
        int c;
        File srcFile = new File(src);
        File dstFile = new File(dst);
        BufferedInputStream in = new BufferedInputStream(new FileInputStream(srcFile));
        BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(dstFile));
        while ((c = ((InputStream)in).read()) != -1) {
            ((OutputStream)out).write(c);
        }
        ((InputStream)in).close();
        ((OutputStream)out).close();
    }

    static void read(RandomAccessFile raf, BITMAPINFOHEADER bih) throws IOException {
        bih.biSize = IconExe.read4(raf);
        bih.biWidth = IconExe.read4(raf);
        bih.biHeight = IconExe.read4(raf);
        bih.biPlanes = IconExe.readU2(raf);
        bih.biBitCount = IconExe.readU2(raf);
        bih.biCompression = IconExe.read4(raf);
        bih.biSizeImage = IconExe.read4(raf);
        bih.biXPelsPerMeter = IconExe.read4(raf);
        bih.biYPelsPerMeter = IconExe.read4(raf);
        bih.biClrUsed = IconExe.read4(raf);
        bih.biClrImportant = IconExe.read4(raf);
    }

    static void read(RandomAccessFile raf, BITMAPINFO bi) throws IOException {
        IconExe.read(raf, bi.bmiHeader);
    }

    static int readU2(RandomAccessFile raf) throws IOException {
        int b0 = raf.readByte() & 0xFF;
        int b1 = raf.readByte() & 0xFF;
        return b1 << 8 | b0;
    }

    static int read4(RandomAccessFile raf) throws IOException {
        int b0 = raf.readByte() & 0xFF;
        int b1 = raf.readByte() & 0xFF;
        int b2 = raf.readByte() & 0xFF;
        int b3 = raf.readByte() & 0xFF;
        return b3 << 24 | b2 << 16 | b1 << 8 | b0;
    }

    static long read8(RandomAccessFile raf) throws IOException {
        int b0 = raf.readByte() & 0xFF;
        int b1 = raf.readByte() & 0xFF;
        int b2 = raf.readByte() & 0xFF;
        int b3 = raf.readByte() & 0xFF;
        int b4 = raf.readByte() & 0xFF;
        int b5 = raf.readByte() & 0xFF;
        int b6 = raf.readByte() & 0xFF;
        int b7 = raf.readByte() & 0xFF;
        return b7 << 56 | b6 << 48 | b5 << 40 | b4 << 32 | b3 << 24 | b2 << 16 | b1 << 8 | b0;
    }

    static void write4(RandomAccessFile raf, int value) throws IOException {
        raf.write(value & 0xFF);
        raf.write(value >> 8 & 0xFF);
        raf.write(value >> 16 & 0xFF);
        raf.write(value >> 24 & 0xFF);
    }

    static void writeU2(RandomAccessFile raf, int value) throws IOException {
        raf.write(value & 0xFF);
        raf.write(value >> 8 & 0xFF);
    }

    static void read(RandomAccessFile raf, IMAGE_DOS_HEADER idh) throws IOException {
        idh.e_magic = IconExe.readU2(raf);
        idh.e_cblp = IconExe.readU2(raf);
        idh.e_cp = IconExe.readU2(raf);
        idh.e_crlc = IconExe.readU2(raf);
        idh.e_cparhdr = IconExe.readU2(raf);
        idh.e_minalloc = IconExe.readU2(raf);
        idh.e_maxalloc = IconExe.readU2(raf);
        idh.e_ss = IconExe.readU2(raf);
        idh.e_sp = IconExe.readU2(raf);
        idh.e_csum = IconExe.readU2(raf);
        idh.e_ip = IconExe.readU2(raf);
        idh.e_cs = IconExe.readU2(raf);
        idh.e_lfarlc = IconExe.readU2(raf);
        idh.e_ovno = IconExe.readU2(raf);
        int i = 0;
        while (i < idh.e_res.length) {
            idh.e_res[i] = IconExe.readU2(raf);
            ++i;
        }
        idh.e_oemid = IconExe.readU2(raf);
        idh.e_oeminfo = IconExe.readU2(raf);
        i = 0;
        while (i < idh.e_res2.length) {
            idh.e_res2[i] = IconExe.readU2(raf);
            ++i;
        }
        idh.e_lfanew = IconExe.read4(raf);
    }

    static void read(RandomAccessFile raf, IMAGE_FILE_HEADER ifh) throws IOException {
        ifh.Machine = IconExe.readU2(raf);
        ifh.NumberOfSections = IconExe.readU2(raf);
        ifh.TimeDateStamp = IconExe.read4(raf);
        ifh.PointerToSymbolTable = IconExe.read4(raf);
        ifh.NumberOfSymbols = IconExe.read4(raf);
        ifh.SizeOfOptionalHeader = IconExe.readU2(raf);
        ifh.Characteristics = IconExe.readU2(raf);
    }

    static void read(RandomAccessFile raf, IMAGE_DATA_DIRECTORY idd) throws IOException {
        idd.VirtualAddress = IconExe.read4(raf);
        idd.Size = IconExe.read4(raf);
    }

    static void read(RandomAccessFile raf, IMAGE_OPTIONAL_HEADER ioh) throws IOException {
        ioh.Magic = IconExe.readU2(raf);
        boolean is32 = ioh.Magic != 523;
        ioh.MajorLinkerVersion = raf.read();
        ioh.MinorLinkerVersion = raf.read();
        ioh.SizeOfCode = IconExe.read4(raf);
        ioh.SizeOfInitializedData = IconExe.read4(raf);
        ioh.SizeOfUninitializedData = IconExe.read4(raf);
        ioh.AddressOfEntryPoint = IconExe.read4(raf);
        ioh.BaseOfCode = IconExe.read4(raf);
        if (is32) {
            ioh.BaseOfData = IconExe.read4(raf);
            ioh.ImageBase = IconExe.read4(raf);
        } else {
            ioh.ImageBase = IconExe.read8(raf);
        }
        ioh.SectionAlignment = IconExe.read4(raf);
        ioh.FileAlignment = IconExe.read4(raf);
        ioh.MajorOperatingSystemVersion = IconExe.readU2(raf);
        ioh.MinorOperatingSystemVersion = IconExe.readU2(raf);
        ioh.MajorImageVersion = IconExe.readU2(raf);
        ioh.MinorImageVersion = IconExe.readU2(raf);
        ioh.MajorSubsystemVersion = IconExe.readU2(raf);
        ioh.MinorSubsystemVersion = IconExe.readU2(raf);
        ioh.Win32VersionValue = IconExe.read4(raf);
        ioh.SizeOfImage = IconExe.read4(raf);
        ioh.SizeOfHeaders = IconExe.read4(raf);
        ioh.CheckSum = IconExe.read4(raf);
        ioh.Subsystem = IconExe.readU2(raf);
        ioh.DllCharacteristics = IconExe.readU2(raf);
        if (is32) {
            ioh.SizeOfStackReserve = IconExe.read4(raf);
            ioh.SizeOfStackCommit = IconExe.read4(raf);
            ioh.SizeOfHeapReserve = IconExe.read4(raf);
            ioh.SizeOfHeapCommit = IconExe.read4(raf);
        } else {
            ioh.SizeOfStackReserve = IconExe.read8(raf);
            ioh.SizeOfStackCommit = IconExe.read8(raf);
            ioh.SizeOfHeapReserve = IconExe.read8(raf);
            ioh.SizeOfHeapCommit = IconExe.read8(raf);
        }
        ioh.LoaderFlags = IconExe.read4(raf);
        ioh.NumberOfRvaAndSizes = IconExe.read4(raf);
        int i = 0;
        while (i < ioh.DataDirectory.length) {
            ioh.DataDirectory[i] = new IMAGE_DATA_DIRECTORY();
            IconExe.read(raf, ioh.DataDirectory[i]);
            ++i;
        }
    }

    static void read(RandomAccessFile raf, IMAGE_NT_HEADERS inh) throws IOException {
        inh.Signature = IconExe.read4(raf);
        IconExe.read(raf, inh.FileHeader);
        IconExe.read(raf, inh.OptionalHeader);
    }

    static void read(RandomAccessFile raf, IMAGE_SECTION_HEADER ish) throws IOException {
        int i = 0;
        while (i < ish.Name.length) {
            ish.Name[i] = raf.read();
            ++i;
        }
        ish.Misc_VirtualSize = IconExe.read4(raf);
        ish.VirtualAddress = IconExe.read4(raf);
        ish.SizeOfRawData = IconExe.read4(raf);
        ish.PointerToRawData = IconExe.read4(raf);
        ish.PointerToRelocations = IconExe.read4(raf);
        ish.PointerToLinenumbers = IconExe.read4(raf);
        ish.NumberOfRelocations = IconExe.readU2(raf);
        ish.NumberOfLinenumbers = IconExe.readU2(raf);
        ish.Characteristics = IconExe.read4(raf);
    }

    static void read(RandomAccessFile raf, IMAGE_RESOURCE_DIRECTORY ird) throws IOException {
        ird.Characteristics = IconExe.read4(raf);
        ird.TimeDateStamp = IconExe.read4(raf);
        ird.MajorVersion = IconExe.readU2(raf);
        ird.MinorVersion = IconExe.readU2(raf);
        ird.NumberOfNamedEntries = IconExe.readU2(raf);
        ird.NumberOfIdEntries = IconExe.readU2(raf);
    }

    static void read(RandomAccessFile raf, IMAGE_RESOURCE_DIRECTORY_ENTRY irde) throws IOException {
        irde.Name = IconExe.read4(raf);
        irde.OffsetToData = IconExe.read4(raf);
        irde.NameOffset = irde.Name & Integer.MAX_VALUE;
        irde.NameIsString = (irde.Name & Integer.MIN_VALUE) != 0;
        irde.Id = irde.Name & 0xFFFF;
        irde.OffsetToDirectory = irde.OffsetToData & Integer.MAX_VALUE;
        irde.DataIsDirectory = (irde.OffsetToData & Integer.MIN_VALUE) != 0;
    }

    static void read(RandomAccessFile raf, IMAGE_RESOURCE_DATA_ENTRY irde) throws IOException {
        irde.OffsetToData = IconExe.read4(raf);
        irde.Size = IconExe.read4(raf);
        irde.CodePage = IconExe.read4(raf);
        irde.Reserved = IconExe.read4(raf);
    }

    static void read(RandomAccessFile raf, NEWHEADER nh) throws IOException {
        nh.Reserved = IconExe.readU2(raf);
        nh.ResType = IconExe.readU2(raf);
        nh.ResCount = IconExe.readU2(raf);
    }

    static void read(RandomAccessFile raf, ICONRESDIR i) throws IOException {
        i.Width = raf.read();
        i.Height = raf.read();
        i.ColorCount = raf.read();
        i.reserved = raf.read();
    }

    static void read(RandomAccessFile raf, CURSORDIR c) throws IOException {
        c.Width = IconExe.readU2(raf);
        c.Height = IconExe.readU2(raf);
    }

    static void read(RandomAccessFile raf, RESDIR rs) throws IOException {
        long start = raf.getFilePointer();
        IconExe.read(raf, rs.Icon);
        raf.seek(start);
        IconExe.read(raf, rs.Cursor);
        rs.Planes = IconExe.readU2(raf);
        rs.BitCount = IconExe.readU2(raf);
        rs.BytesInRes = IconExe.read4(raf);
        rs.IconCursorId = IconExe.readU2(raf);
    }

    static class BITMAPINFO {
        BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
        RGBQUAD[] bmiColors = null;

        BITMAPINFO() {
        }
    }

    public static class BITMAPINFOHEADER {
        int biSize;
        int biWidth;
        int biHeight;
        int biPlanes;
        int biBitCount;
        int biCompression;
        int biSizeImage;
        int biXPelsPerMeter;
        int biYPelsPerMeter;
        int biClrUsed;
        int biClrImportant;
    }

    public static class CURSORDIR {
        int Width;
        int Height;
    }

    public static abstract class FileFormat {
        LEDataInputStream inputStream;
        ImageLoader loader;
        int compression;

        byte[] bitInvertData(byte[] data, int startIndex, int endIndex) {
            int i = startIndex;
            while (i < endIndex) {
                data[i] = (byte)(255 - data[i - startIndex]);
                ++i;
            }
            return data;
        }

        abstract boolean isFileFormat(LEDataInputStream var1);

        abstract ImageData[] loadFromByteStream();

        public ImageData[] loadFromStream(LEDataInputStream stream) {
            try {
                this.inputStream = stream;
                return this.loadFromByteStream();
            }
            catch (Exception e) {
                SWT.error(39, e);
                return null;
            }
        }

        public static ImageData[] load(InputStream is, ImageLoader loader) {
            LEDataInputStream stream = new LEDataInputStream(is);
            boolean isSupported = false;
            FileFormat fileFormat = new WinICOFileFormat();
            if (fileFormat.isFileFormat(stream)) {
                isSupported = true;
            } else {
                fileFormat = new WinBMPFileFormat();
                if (fileFormat.isFileFormat(stream)) {
                    isSupported = true;
                }
            }
            if (!isSupported) {
                SWT.error(42);
            }
            fileFormat.loader = loader;
            return fileFormat.loadFromStream(stream);
        }
    }

    public static class ICONRESDIR {
        int Width;
        int Height;
        int ColorCount;
        int reserved;
    }

    public static class IMAGE_DATA_DIRECTORY {
        int VirtualAddress;
        int Size;
    }

    public static class IMAGE_DOS_HEADER {
        int e_magic;
        int e_cblp;
        int e_cp;
        int e_crlc;
        int e_cparhdr;
        int e_minalloc;
        int e_maxalloc;
        int e_ss;
        int e_sp;
        int e_csum;
        int e_ip;
        int e_cs;
        int e_lfarlc;
        int e_ovno;
        int[] e_res = new int[4];
        int e_oemid;
        int e_oeminfo;
        int[] e_res2 = new int[10];
        int e_lfanew;
    }

    public static class IMAGE_FILE_HEADER {
        int Machine;
        int NumberOfSections;
        int TimeDateStamp;
        int PointerToSymbolTable;
        int NumberOfSymbols;
        int SizeOfOptionalHeader;
        int Characteristics;
    }

    public static class IMAGE_NT_HEADERS {
        int Signature;
        IMAGE_FILE_HEADER FileHeader = new IMAGE_FILE_HEADER();
        IMAGE_OPTIONAL_HEADER OptionalHeader = new IMAGE_OPTIONAL_HEADER();
        static final int FIELD_OFFSET_OptionalHeader = 24;
    }

    public static class IMAGE_OPTIONAL_HEADER {
        int Magic;
        int MajorLinkerVersion;
        int MinorLinkerVersion;
        int SizeOfCode;
        int SizeOfInitializedData;
        int SizeOfUninitializedData;
        int AddressOfEntryPoint;
        int BaseOfCode;
        int BaseOfData;
        long ImageBase;
        int SectionAlignment;
        int FileAlignment;
        int MajorOperatingSystemVersion;
        int MinorOperatingSystemVersion;
        int MajorImageVersion;
        int MinorImageVersion;
        int MajorSubsystemVersion;
        int MinorSubsystemVersion;
        int Win32VersionValue;
        int SizeOfImage;
        int SizeOfHeaders;
        int CheckSum;
        int Subsystem;
        int DllCharacteristics;
        long SizeOfStackReserve;
        long SizeOfStackCommit;
        long SizeOfHeapReserve;
        long SizeOfHeapCommit;
        int LoaderFlags;
        int NumberOfRvaAndSizes;
        IMAGE_DATA_DIRECTORY[] DataDirectory = new IMAGE_DATA_DIRECTORY[16];
    }

    public static class IMAGE_RESOURCE_DATA_ENTRY {
        int OffsetToData;
        int Size;
        int CodePage;
        int Reserved;
    }

    public static class IMAGE_RESOURCE_DIRECTORY {
        int Characteristics;
        int TimeDateStamp;
        int MajorVersion;
        int MinorVersion;
        int NumberOfNamedEntries;
        int NumberOfIdEntries;
        static final int SIZEOF = 16;
    }

    public static class IMAGE_RESOURCE_DIRECTORY_ENTRY {
        int NameOffset;
        boolean NameIsString;
        int Name;
        int Id;
        int OffsetToData;
        int OffsetToDirectory;
        boolean DataIsDirectory;
    }

    public static class IMAGE_SECTION_HEADER {
        int[] Name = new int[8];
        int Misc_VirtualSize;
        int VirtualAddress;
        int SizeOfRawData;
        int PointerToRawData;
        int PointerToRelocations;
        int PointerToLinenumbers;
        int NumberOfRelocations;
        int NumberOfLinenumbers;
        int Characteristics;
    }

    public static class IconResInfo {
        ImageData data;
        int offset;
        int size;
    }

    static class ImageData {
        public int width;
        public int height;
        public int depth;
        public int scanlinePad;
        public int bytesPerLine;
        public byte[] data;
        public PaletteData palette;
        public int transparentPixel;
        public byte[] maskData;
        public int maskPad;
        public byte[] alphaData;
        public int alpha;
        public int type;
        public int x;
        public int y;
        public int disposalMethod;
        public int delayTime;
        static final byte[][] ANY_TO_EIGHT = new byte[9][];
        static final byte[] ONE_TO_ONE_MAPPING;
        static final int[][] DITHER_MATRIX;
        static final int BLIT_SRC = 1;
        static final int BLIT_ALPHA = 2;
        static final int BLIT_DITHER = 4;
        static final int ALPHA_OPAQUE = 255;
        static final int ALPHA_TRANSPARENT = 0;
        static final int ALPHA_CHANNEL_SEPARATE = -1;
        static final int ALPHA_CHANNEL_SOURCE = -2;
        static final int ALPHA_MASK_UNPACKED = -3;
        static final int ALPHA_MASK_PACKED = -4;
        static final int ALPHA_MASK_INDEX = -5;
        static final int ALPHA_MASK_RGB = -6;
        static final int LSB_FIRST = 0;
        static final int MSB_FIRST = 1;

        static {
            int b = 0;
            while (b < 9) {
                ImageData.ANY_TO_EIGHT[b] = new byte[1 << b];
                byte[] data = ImageData.ANY_TO_EIGHT[b];
                if (b != 0) {
                    int inc = 0;
                    int bit = 65536;
                    while ((bit >>= b) != 0) {
                        inc |= bit;
                    }
                    int v = 0;
                    int p = 0;
                    while (v < 65536) {
                        data[p++] = (byte)(v >> 8);
                        v += inc;
                    }
                }
                ++b;
            }
            ONE_TO_ONE_MAPPING = ANY_TO_EIGHT[8];
            int[][] nArrayArray = new int[8][];
            nArrayArray[0] = new int[]{0xFC0000, 0x7C0000, 0xDC0000, 0x5C0000, 0xF40000, 0x740000, 0xD40000, 0x540000};
            nArrayArray[1] = new int[]{0x3C0000, 0xBC0000, 0x1C0000, 0x9C0000, 0x340000, 0xB40000, 0x140000, 0x940000};
            nArrayArray[2] = new int[]{0xCC0000, 0x4C0000, 0xEC0000, 0x6C0000, 0xC40000, 0x440000, 0xE40000, 0x640000};
            nArrayArray[3] = new int[]{786432, 0x8C0000, 0x2C0000, 0xAC0000, 262144, 0x840000, 0x240000, 0xA40000};
            nArrayArray[4] = new int[]{0xF00000, 0x700000, 0xD00000, 0x500000, 0xF80000, 0x780000, 0xD80000, 0x580000};
            nArrayArray[5] = new int[]{0x300000, 0xB00000, 0x100000, 0x900000, 0x380000, 0xB80000, 0x180000, 0x980000};
            nArrayArray[6] = new int[]{0xC00000, 0x400000, 0xE00000, 0x600000, 0xC80000, 0x480000, 0xE80000, 0x680000};
            int[] nArray = new int[8];
            nArray[1] = 0x800000;
            nArray[2] = 0x200000;
            nArray[3] = 0xA00000;
            nArray[4] = 524288;
            nArray[5] = 0x880000;
            nArray[6] = 0x280000;
            nArray[7] = 0xA80000;
            nArrayArray[7] = nArray;
            DITHER_MATRIX = nArrayArray;
        }

        public ImageData(int width, int height, int depth, PaletteData palette) {
            this(width, height, depth, palette, 4, null, 0, null, null, -1, -1, -1, 0, 0, 0, 0);
        }

        public ImageData(int width, int height, int depth, PaletteData palette, int scanlinePad, byte[] data) {
            this(width, height, depth, palette, scanlinePad, ImageData.checkData(data), 0, null, null, -1, -1, -1, 0, 0, 0, 0);
        }

        public ImageData(String filename) {
            ImageData[] data = new ImageLoader().load(filename);
            if (data.length < 1) {
                SWT.error(40);
            }
            ImageData i = data[0];
            this.setAllFields(i.width, i.height, i.depth, i.scanlinePad, i.bytesPerLine, i.data, i.palette, i.transparentPixel, i.maskData, i.maskPad, i.alphaData, i.alpha, i.type, i.x, i.y, i.disposalMethod, i.delayTime);
        }

        ImageData() {
        }

        ImageData(int width, int height, int depth, PaletteData palette, int scanlinePad, byte[] data, int maskPad, byte[] maskData, byte[] alphaData, int alpha, int transparentPixel, int type, int x, int y, int disposalMethod, int delayTime) {
            if (palette == null) {
                SWT.error(4);
            }
            if (depth != 1 && depth != 2 && depth != 4 && depth != 8 && depth != 16 && depth != 24 && depth != 32) {
                SWT.error(5);
            }
            if (width <= 0 || height <= 0) {
                SWT.error(5);
            }
            if (scanlinePad == 0) {
                SWT.error(7);
            }
            int bytesPerLine = ((width * depth + 7) / 8 + (scanlinePad - 1)) / scanlinePad * scanlinePad;
            this.setAllFields(width, height, depth, scanlinePad, bytesPerLine, data != null ? data : new byte[bytesPerLine * height], palette, transparentPixel, maskData, maskPad, alphaData, alpha, type, x, y, disposalMethod, delayTime);
        }

        void setAllFields(int width, int height, int depth, int scanlinePad, int bytesPerLine, byte[] data, PaletteData palette, int transparentPixel, byte[] maskData, int maskPad, byte[] alphaData, int alpha, int type, int x, int y, int disposalMethod, int delayTime) {
            this.width = width;
            this.height = height;
            this.depth = depth;
            this.scanlinePad = scanlinePad;
            this.bytesPerLine = bytesPerLine;
            this.data = data;
            this.palette = palette;
            this.transparentPixel = transparentPixel;
            this.maskData = maskData;
            this.maskPad = maskPad;
            this.alphaData = alphaData;
            this.alpha = alpha;
            this.type = type;
            this.x = x;
            this.y = y;
            this.disposalMethod = disposalMethod;
            this.delayTime = delayTime;
        }

        public static ImageData internal_new(int width, int height, int depth, PaletteData palette, int scanlinePad, byte[] data, int maskPad, byte[] maskData, byte[] alphaData, int alpha, int transparentPixel, int type, int x, int y, int disposalMethod, int delayTime) {
            return new ImageData(width, height, depth, palette, scanlinePad, data, maskPad, maskData, alphaData, alpha, transparentPixel, type, x, y, disposalMethod, delayTime);
        }

        ImageData colorMaskImage(int pixel) {
            ImageData mask = new ImageData(this.width, this.height, 1, ImageData.bwPalette(), 2, null, 0, null, null, -1, -1, -1, 0, 0, 0, 0);
            int[] row = new int[this.width];
            int y = 0;
            while (y < this.height) {
                this.getPixels(0, y, this.width, row, 0);
                int i = 0;
                while (i < this.width) {
                    row[i] = pixel != -1 && row[i] == pixel ? 0 : 1;
                    ++i;
                }
                mask.setPixels(0, y, this.width, row, 0);
                ++y;
            }
            return mask;
        }

        static byte[] checkData(byte[] data) {
            if (data == null) {
                SWT.error(4);
            }
            return data;
        }

        public void getPixels(int x, int y, int getWidth, byte[] pixels, int startIndex) {
            if (pixels == null) {
                SWT.error(4);
            }
            if (getWidth < 0 || x >= this.width || y >= this.height || x < 0 || y < 0) {
                SWT.error(5);
            }
            if (getWidth == 0) {
                return;
            }
            int mask = 0;
            int n = getWidth;
            int i = startIndex;
            int srcX = x;
            int srcY = y;
            if (this.depth == 1) {
                int index = y * this.bytesPerLine + (x >> 3);
                int theByte = this.data[index] & 0xFF;
                while (n > 0) {
                    mask = 1 << 7 - (srcX & 7);
                    pixels[i] = (theByte & mask) == 0 ? (byte)0 : 1;
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        if (n > 0) {
                            theByte = this.data[index] & 0xFF;
                        }
                        srcX = 0;
                        continue;
                    }
                    if (mask != 1) continue;
                    ++index;
                    if (n <= 0) continue;
                    theByte = this.data[index] & 0xFF;
                }
                return;
            }
            if (this.depth == 2) {
                int index = y * this.bytesPerLine + (x >> 2);
                int theByte = this.data[index] & 0xFF;
                while (n > 0) {
                    int offset = 3 - srcX % 4;
                    mask = 3 << offset * 2;
                    pixels[i] = (byte)((theByte & mask) >> offset * 2);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        if (n > 0) {
                            theByte = this.data[index] & 0xFF;
                        }
                        srcX = 0;
                        continue;
                    }
                    if (offset != 0) continue;
                    theByte = this.data[++index] & 0xFF;
                }
                return;
            }
            if (this.depth == 4) {
                int theByte;
                int index = y * this.bytesPerLine + (x >> 1);
                if ((x & 1) == 1) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = (byte)(theByte & 0xF);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                }
                while (n > 1) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = (byte)(theByte >> 4);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    pixels[i] = (byte)(theByte & 0xF);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    ++index;
                }
                if (n > 0) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = (byte)(theByte >> 4);
                }
                return;
            }
            if (this.depth == 8) {
                int index = y * this.bytesPerLine + x;
                int j = 0;
                while (j < getWidth) {
                    pixels[i] = this.data[index];
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                    ++j;
                }
                return;
            }
            SWT.error(38);
        }

        public void getPixels(int x, int y, int getWidth, int[] pixels, int startIndex) {
            if (pixels == null) {
                SWT.error(4);
            }
            if (getWidth < 0 || x >= this.width || y >= this.height || x < 0 || y < 0) {
                SWT.error(5);
            }
            if (getWidth == 0) {
                return;
            }
            int n = getWidth;
            int i = startIndex;
            int srcX = x;
            int srcY = y;
            if (this.depth == 1) {
                int index = y * this.bytesPerLine + (x >> 3);
                int theByte = this.data[index] & 0xFF;
                while (n > 0) {
                    int mask = 1 << 7 - (srcX & 7);
                    pixels[i] = (theByte & mask) == 0 ? 0 : 1;
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        if (n > 0) {
                            theByte = this.data[index] & 0xFF;
                        }
                        srcX = 0;
                        continue;
                    }
                    if (mask != 1) continue;
                    ++index;
                    if (n <= 0) continue;
                    theByte = this.data[index] & 0xFF;
                }
                return;
            }
            if (this.depth == 2) {
                int index = y * this.bytesPerLine + (x >> 2);
                int theByte = this.data[index] & 0xFF;
                while (n > 0) {
                    int offset = 3 - srcX % 4;
                    int mask = 3 << offset * 2;
                    pixels[i] = (byte)((theByte & mask) >> offset * 2);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        if (n > 0) {
                            theByte = this.data[index] & 0xFF;
                        }
                        srcX = 0;
                        continue;
                    }
                    if (offset != 0) continue;
                    theByte = this.data[++index] & 0xFF;
                }
                return;
            }
            if (this.depth == 4) {
                int theByte;
                int index = y * this.bytesPerLine + (x >> 1);
                if ((x & 1) == 1) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = theByte & 0xF;
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                }
                while (n > 1) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = theByte >> 4;
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    pixels[i] = theByte & 0xF;
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    ++index;
                }
                if (n > 0) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = theByte >> 4;
                }
                return;
            }
            if (this.depth == 8) {
                int index = y * this.bytesPerLine + x;
                int j = 0;
                while (j < getWidth) {
                    pixels[i] = this.data[index] & 0xFF;
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                    ++j;
                }
                return;
            }
            if (this.depth == 16) {
                int index = y * this.bytesPerLine + x * 2;
                int j = 0;
                while (j < getWidth) {
                    pixels[i] = ((this.data[index + 1] & 0xFF) << 8) + (this.data[index] & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 2;
                    }
                    ++j;
                }
                return;
            }
            if (this.depth == 24) {
                int index = y * this.bytesPerLine + x * 3;
                int j = 0;
                while (j < getWidth) {
                    pixels[i] = (this.data[index] & 0xFF) << 16 | (this.data[index + 1] & 0xFF) << 8 | this.data[index + 2] & 0xFF;
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 3;
                    }
                    ++j;
                }
                return;
            }
            if (this.depth == 32) {
                int index = y * this.bytesPerLine + x * 4;
                i = startIndex;
                int j = 0;
                while (j < getWidth) {
                    pixels[i] = (this.data[index] & 0xFF) << 24 | (this.data[index + 1] & 0xFF) << 16 | (this.data[index + 2] & 0xFF) << 8 | this.data[index + 3] & 0xFF;
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 4;
                    }
                    ++j;
                }
                return;
            }
            SWT.error(38);
        }

        public RGB[] getRGBs() {
            return this.palette.getRGBs();
        }

        public ImageData getTransparencyMask() {
            if (this.getTransparencyType() == 2) {
                return new ImageData(this.width, this.height, 1, ImageData.bwPalette(), this.maskPad, this.maskData);
            }
            return this.colorMaskImage(this.transparentPixel);
        }

        public int getTransparencyType() {
            if (this.maskData != null) {
                return 2;
            }
            if (this.transparentPixel != -1) {
                return 4;
            }
            if (this.alphaData != null) {
                return 1;
            }
            return 0;
        }

        int getByteOrder() {
            return this.depth != 16 ? 1 : 0;
        }

        public void setPixels(int x, int y, int putWidth, byte[] pixels, int startIndex) {
            if (pixels == null) {
                SWT.error(4);
            }
            if (putWidth < 0 || x >= this.width || y >= this.height || x < 0 || y < 0) {
                SWT.error(5);
            }
            if (putWidth == 0) {
                return;
            }
            int n = putWidth;
            int i = startIndex;
            int srcX = x;
            int srcY = y;
            if (this.depth == 1) {
                int index = y * this.bytesPerLine + (x >> 3);
                while (n > 0) {
                    int mask = 1 << 7 - (srcX & 7);
                    this.data[index] = (pixels[i] & 1) == 1 ? (byte)(this.data[index] & 0xFF | mask) : (byte)(this.data[index] & 0xFF & ~mask);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    if (mask != 1) continue;
                    ++index;
                }
                return;
            }
            if (this.depth == 2) {
                byte[] masks = new byte[]{-4, -13, -49, 63};
                int index = y * this.bytesPerLine + (x >> 2);
                int offset = 3 - x % 4;
                while (n > 0) {
                    int theByte = pixels[i] & 3;
                    this.data[index] = (byte)(this.data[index] & masks[offset] | theByte << offset * 2);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        offset = 0;
                        srcX = 0;
                        continue;
                    }
                    if (offset == 0) {
                        ++index;
                        offset = 3;
                        continue;
                    }
                    --offset;
                }
                return;
            }
            if (this.depth == 4) {
                int index = y * this.bytesPerLine + (x >> 1);
                boolean high = (x & 1) == 0;
                while (n > 0) {
                    int theByte = pixels[i] & 0xF;
                    this.data[index] = high ? (byte)(this.data[index] & 0xF | theByte << 4) : (byte)(this.data[index] & 0xF0 | theByte);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        high = true;
                        srcX = 0;
                        continue;
                    }
                    if (!high) {
                        ++index;
                    }
                    boolean bl = high = !high;
                }
                return;
            }
            if (this.depth == 8) {
                int index = y * this.bytesPerLine + x;
                int j = 0;
                while (j < putWidth) {
                    this.data[index] = (byte)(pixels[i] & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                    ++j;
                }
                return;
            }
            SWT.error(38);
        }

        public void setPixels(int x, int y, int putWidth, int[] pixels, int startIndex) {
            if (pixels == null) {
                SWT.error(4);
            }
            if (putWidth < 0 || x >= this.width || y >= this.height || x < 0 || y < 0) {
                SWT.error(5);
            }
            if (putWidth == 0) {
                return;
            }
            int n = putWidth;
            int i = startIndex;
            int srcX = x;
            int srcY = y;
            if (this.depth == 1) {
                int index = y * this.bytesPerLine + (x >> 3);
                while (n > 0) {
                    int mask = 1 << 7 - (srcX & 7);
                    this.data[index] = (pixels[i] & 1) == 1 ? (byte)(this.data[index] & 0xFF | mask) : (byte)(this.data[index] & 0xFF & ~mask);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    if (mask != 1) continue;
                    ++index;
                }
                return;
            }
            if (this.depth == 2) {
                byte[] masks = new byte[]{-4, -13, -49, 63};
                int index = y * this.bytesPerLine + (x >> 2);
                int offset = 3 - x % 4;
                while (n > 0) {
                    int theByte = pixels[i] & 3;
                    this.data[index] = (byte)(this.data[index] & masks[offset] | theByte << offset * 2);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        offset = 3;
                        srcX = 0;
                        continue;
                    }
                    if (offset == 0) {
                        ++index;
                        offset = 3;
                        continue;
                    }
                    --offset;
                }
                return;
            }
            if (this.depth == 4) {
                int index = y * this.bytesPerLine + (x >> 1);
                boolean high = (x & 1) == 0;
                while (n > 0) {
                    int theByte = pixels[i] & 0xF;
                    this.data[index] = high ? (byte)(this.data[index] & 0xF | theByte << 4) : (byte)(this.data[index] & 0xF0 | theByte);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        high = true;
                        srcX = 0;
                        continue;
                    }
                    if (!high) {
                        ++index;
                    }
                    boolean bl = high = !high;
                }
                return;
            }
            if (this.depth == 8) {
                int index = y * this.bytesPerLine + x;
                int j = 0;
                while (j < putWidth) {
                    this.data[index] = (byte)(pixels[i] & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                    ++j;
                }
                return;
            }
            if (this.depth == 16) {
                int index = y * this.bytesPerLine + x * 2;
                int j = 0;
                while (j < putWidth) {
                    int pixel = pixels[i];
                    this.data[index] = (byte)(pixel & 0xFF);
                    this.data[index + 1] = (byte)(pixel >> 8 & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 2;
                    }
                    ++j;
                }
                return;
            }
            if (this.depth == 24) {
                int index = y * this.bytesPerLine + x * 3;
                int j = 0;
                while (j < putWidth) {
                    int pixel = pixels[i];
                    this.data[index] = (byte)(pixel >> 16 & 0xFF);
                    this.data[index + 1] = (byte)(pixel >> 8 & 0xFF);
                    this.data[index + 2] = (byte)(pixel & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 3;
                    }
                    ++j;
                }
                return;
            }
            if (this.depth == 32) {
                int index = y * this.bytesPerLine + x * 4;
                int j = 0;
                while (j < putWidth) {
                    int pixel = pixels[i];
                    this.data[index] = (byte)(pixel >> 24 & 0xFF);
                    this.data[index + 1] = (byte)(pixel >> 16 & 0xFF);
                    this.data[index + 2] = (byte)(pixel >> 8 & 0xFF);
                    this.data[index + 3] = (byte)(pixel & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 4;
                    }
                    ++j;
                }
                return;
            }
            SWT.error(38);
        }

        static PaletteData bwPalette() {
            return new PaletteData(new RGB[]{new RGB(0, 0, 0), new RGB(255, 255, 255)});
        }

        static int getMSBOffset(int mask) {
            int i = 31;
            while (i >= 0) {
                if ((mask >> i & 1) != 0) {
                    return i + 1;
                }
                --i;
            }
            return 0;
        }

        static int closestMatch(int depth, byte red, byte green, byte blue, int redMask, int greenMask, int blueMask, byte[] reds, byte[] greens, byte[] blues) {
            if (depth > 8) {
                int rshift = 32 - ImageData.getMSBOffset(redMask);
                int gshift = 32 - ImageData.getMSBOffset(greenMask);
                int bshift = 32 - ImageData.getMSBOffset(blueMask);
                return red << 24 >>> rshift & redMask | green << 24 >>> gshift & greenMask | blue << 24 >>> bshift & blueMask;
            }
            int minDistance = Integer.MAX_VALUE;
            int nearestPixel = 0;
            int n = reds.length;
            int j = 0;
            while (j < n) {
                int r = (reds[j] & 0xFF) - (red & 0xFF);
                int g = (greens[j] & 0xFF) - (green & 0xFF);
                int b = (blues[j] & 0xFF) - (blue & 0xFF);
                int distance = r * r + g * g + b * b;
                if (distance < minDistance) {
                    nearestPixel = j;
                    if (distance == 0) break;
                    minDistance = distance;
                }
                ++j;
            }
            return nearestPixel;
        }

        static final ImageData convertMask(ImageData mask) {
            if (mask.depth == 1) {
                return mask;
            }
            PaletteData palette = new PaletteData(new RGB[]{new RGB(0, 0, 0), new RGB(255, 255, 255)});
            ImageData newMask = new ImageData(mask.width, mask.height, 1, palette);
            int blackIndex = 0;
            RGB[] rgbs = mask.getRGBs();
            if (rgbs != null) {
                while (blackIndex < rgbs.length) {
                    if (rgbs[blackIndex].equals(palette.colors[0])) break;
                    ++blackIndex;
                }
            }
            int[] pixels = new int[mask.width];
            int y = 0;
            while (y < mask.height) {
                mask.getPixels(0, y, mask.width, pixels, 0);
                int i = 0;
                while (i < pixels.length) {
                    pixels[i] = pixels[i] == blackIndex ? 0 : 1;
                    ++i;
                }
                newMask.setPixels(0, y, mask.width, pixels, 0);
                ++y;
            }
            return newMask;
        }

        static final byte[] convertPad(byte[] data, int width, int height, int depth, int pad, int newPad) {
            if (pad == newPad) {
                return data;
            }
            int stride = (width * depth + 7) / 8;
            int bpl = (stride + (pad - 1)) / pad * pad;
            int newBpl = (stride + (newPad - 1)) / newPad * newPad;
            byte[] newData = new byte[height * newBpl];
            int srcIndex = 0;
            int destIndex = 0;
            int y = 0;
            while (y < height) {
                System.arraycopy(data, srcIndex, newData, destIndex, stride);
                srcIndex += bpl;
                destIndex += newBpl;
                ++y;
            }
            return newData;
        }

        static int getChannelShift(int mask) {
            if (mask == 0) {
                return 0;
            }
            int i = 0;
            while ((mask & 1) == 0 && i < 32) {
                mask >>>= 1;
                ++i;
            }
            return i;
        }

        static int getChannelWidth(int mask, int shift) {
            if (mask == 0) {
                return 0;
            }
            mask >>>= shift;
            int i = shift;
            while ((mask & 1) != 0 && i < 32) {
                mask >>>= 1;
                ++i;
            }
            return i - shift;
        }

        static byte getChannelField(int data, int mask) {
            int shift = ImageData.getChannelShift(mask);
            return ANY_TO_EIGHT[ImageData.getChannelWidth(mask, shift)][(data & mask) >>> shift];
        }

        static final void buildDitheredGradientChannel(int from, int to, int steps, int bandWidth, int bandHeight, boolean vertical, byte[] bitmapData, int dp, int bytesPerLine, int bits) {
            int mask = 65280 >>> bits;
            int val = from << 16;
            int inc = ((to << 16) - val) / steps + 1;
            if (vertical) {
                int dy = 0;
                while (dy < bandHeight) {
                    int dx = 0;
                    int dptr = dp;
                    while (dx < bandWidth) {
                        int thresh = DITHER_MATRIX[dy & 7][dx] >>> bits;
                        int temp = val + thresh;
                        bitmapData[dptr] = temp > 0xFFFFFF ? -1 : (byte)(temp >>> 16 & mask);
                        ++dx;
                        dptr += 4;
                    }
                    val += inc;
                    ++dy;
                    dp += bytesPerLine;
                }
            } else {
                int dx = 0;
                while (dx < bandWidth) {
                    int dy = 0;
                    int dptr = dp;
                    while (dy < bandHeight) {
                        int thresh = DITHER_MATRIX[dy][dx & 7] >>> bits;
                        int temp = val + thresh;
                        bitmapData[dptr] = temp > 0xFFFFFF ? -1 : (byte)(temp >>> 16 & mask);
                        ++dy;
                        dptr += bytesPerLine;
                    }
                    val += inc;
                    ++dx;
                    dp += 4;
                }
            }
        }
    }

    static class ImageLoader {
        public ImageData[] data;
        public int logicalScreenWidth;
        public int logicalScreenHeight;
        public int backgroundPixel;
        public int repeatCount;
        Vector imageLoaderListeners;

        public ImageLoader() {
            this.reset();
        }

        void reset() {
            this.data = null;
            this.logicalScreenWidth = 0;
            this.logicalScreenHeight = 0;
            this.backgroundPixel = -1;
            this.repeatCount = 1;
        }

        public ImageData[] load(InputStream stream) {
            if (stream == null) {
                SWT.error(4);
            }
            this.reset();
            this.data = FileFormat.load(stream, this);
            return this.data;
        }

        /*
         * Loose catch block
         */
        public ImageData[] load(String filename) {
            if (filename == null) {
                SWT.error(4);
            }
            InputStream stream = null;
            stream = new BufferedInputStream(new FileInputStream(filename));
            ImageData[] imageDataArray = this.load(stream);
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException iOException) {}
            return imageDataArray;
            catch (IOException e) {
                try {
                    SWT.error(39, e);
                }
                catch (Throwable throwable) {
                    try {
                        if (stream != null) {
                            stream.close();
                        }
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException iOException) {}
            }
            return null;
        }
    }

    static class LEDataInputStream
    extends InputStream {
        int position;
        InputStream in;
        protected byte[] buf;
        protected int pos;

        public LEDataInputStream(InputStream input) {
            this(input, 512);
        }

        public LEDataInputStream(InputStream input, int bufferSize) {
            this.in = input;
            if (bufferSize <= 0) {
                throw new IllegalArgumentException();
            }
            this.buf = new byte[bufferSize];
            this.pos = bufferSize;
        }

        public void close() throws IOException {
            this.buf = null;
            if (this.in != null) {
                this.in.close();
                this.in = null;
            }
        }

        public int getPosition() {
            return this.position;
        }

        public int available() throws IOException {
            if (this.buf == null) {
                throw new IOException();
            }
            return this.buf.length - this.pos + this.in.available();
        }

        public int read() throws IOException {
            if (this.buf == null) {
                throw new IOException();
            }
            ++this.position;
            if (this.pos < this.buf.length) {
                return this.buf[this.pos++] & 0xFF;
            }
            return this.in.read();
        }

        public int read(byte[] b, int off, int len) throws IOException {
            int left = len;
            int result = this.readData(b, off, len);
            while (result != -1) {
                this.position += result;
                if (result == left) {
                    return len;
                }
                result = this.readData(b, off += result, left -= result);
            }
            return -1;
        }

        private int readData(byte[] buffer, int offset, int length) throws IOException {
            if (this.buf == null) {
                throw new IOException();
            }
            if (offset < 0 || offset > buffer.length || length < 0 || length > buffer.length - offset) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int cacheCopied = 0;
            int newOffset = offset;
            int available = this.buf.length - this.pos;
            if (available > 0) {
                cacheCopied = available >= length ? length : available;
                System.arraycopy(this.buf, this.pos, buffer, newOffset, cacheCopied);
                newOffset += cacheCopied;
                this.pos += cacheCopied;
            }
            if (cacheCopied == length) {
                return length;
            }
            int inCopied = this.in.read(buffer, newOffset, length - cacheCopied);
            if (inCopied > 0) {
                return inCopied + cacheCopied;
            }
            if (cacheCopied == 0) {
                return inCopied;
            }
            return cacheCopied;
        }

        public int readInt() throws IOException {
            byte[] buf = new byte[4];
            this.read(buf);
            return (((buf[3] & 0xFF) << 8 | buf[2] & 0xFF) << 8 | buf[1] & 0xFF) << 8 | buf[0] & 0xFF;
        }

        public short readShort() throws IOException {
            byte[] buf = new byte[2];
            this.read(buf);
            return (short)((buf[1] & 0xFF) << 8 | buf[0] & 0xFF);
        }

        public void unread(byte[] b) throws IOException {
            int length = b.length;
            if (length > this.pos) {
                throw new IOException();
            }
            this.position -= length;
            this.pos -= length;
            System.arraycopy(b, 0, this.buf, this.pos, length);
        }
    }

    public static class NEWHEADER {
        int Reserved;
        int ResType;
        int ResCount;
    }

    static class PaletteData {
        public boolean isDirect;
        public RGB[] colors;
        public int redMask;
        public int greenMask;
        public int blueMask;
        public int redShift;
        public int greenShift;
        public int blueShift;

        public PaletteData(RGB[] colors) {
            if (colors == null) {
                SWT.error(4);
            }
            this.colors = colors;
            this.isDirect = false;
        }

        public PaletteData(int redMask, int greenMask, int blueMask) {
            this.redMask = redMask;
            this.greenMask = greenMask;
            this.blueMask = blueMask;
            this.isDirect = true;
            this.redShift = this.shiftForMask(redMask);
            this.greenShift = this.shiftForMask(greenMask);
            this.blueShift = this.shiftForMask(blueMask);
        }

        public int getPixel(RGB rgb) {
            if (rgb == null) {
                SWT.error(4);
            }
            if (this.isDirect) {
                int pixel = 0;
                pixel |= (this.redShift < 0 ? rgb.red << -this.redShift : rgb.red >>> this.redShift) & this.redMask;
                pixel |= (this.greenShift < 0 ? rgb.green << -this.greenShift : rgb.green >>> this.greenShift) & this.greenMask;
                return pixel |= (this.blueShift < 0 ? rgb.blue << -this.blueShift : rgb.blue >>> this.blueShift) & this.blueMask;
            }
            int i = 0;
            while (i < this.colors.length) {
                if (this.colors[i].equals(rgb)) {
                    return i;
                }
                ++i;
            }
            SWT.error(5);
            return 0;
        }

        public RGB getRGB(int pixel) {
            if (this.isDirect) {
                int r = pixel & this.redMask;
                r = this.redShift < 0 ? r >>> -this.redShift : r << this.redShift;
                int g = pixel & this.greenMask;
                g = this.greenShift < 0 ? g >>> -this.greenShift : g << this.greenShift;
                int b = pixel & this.blueMask;
                b = this.blueShift < 0 ? b >>> -this.blueShift : b << this.blueShift;
                return new RGB(r, g, b);
            }
            if (pixel < 0 || pixel >= this.colors.length) {
                SWT.error(5);
            }
            return this.colors[pixel];
        }

        public RGB[] getRGBs() {
            return this.colors;
        }

        int shiftForMask(int mask) {
            int i = 31;
            while (i >= 0) {
                if ((mask >> i & 1) != 0) {
                    return 7 - i;
                }
                --i;
            }
            return 32;
        }
    }

    public static class RESDIR {
        ICONRESDIR Icon = new ICONRESDIR();
        CURSORDIR Cursor = new CURSORDIR();
        int Planes;
        int BitCount;
        int BytesInRes;
        int IconCursorId;
    }

    static class RGB {
        public int red;
        public int green;
        public int blue;
        static final long serialVersionUID = 3258415023461249074L;

        public RGB(int red, int green, int blue) {
            if (red > 255 || red < 0 || green > 255 || green < 0 || blue > 255 || blue < 0) {
                SWT.error(5);
            }
            this.red = red;
            this.green = green;
            this.blue = blue;
        }

        public boolean equals(Object object) {
            if (object == this) {
                return true;
            }
            if (!(object instanceof RGB)) {
                return false;
            }
            RGB rgb = (RGB)object;
            return rgb.red == this.red && rgb.green == this.green && rgb.blue == this.blue;
        }

        public int hashCode() {
            return this.blue << 16 | this.green << 8 | this.red;
        }

        public String toString() {
            return "RGB {" + this.red + ", " + this.green + ", " + this.blue + "}";
        }
    }

    static class RGBQUAD {
        int rgBlue;
        int rgbGreen;
        int rgbRed;
        int rgbReserved;

        RGBQUAD() {
        }
    }

    static class SWT {
        public static final int IMAGE_ICO = 3;
        public static final int ERROR_IO = 39;
        public static final int ERROR_INVALID_IMAGE = 40;
        public static final int ERROR_NULL_ARGUMENT = 4;
        public static final int ERROR_INVALID_ARGUMENT = 5;
        public static final int ERROR_CANNOT_BE_ZERO = 7;
        public static final int IMAGE_UNDEFINED = -1;
        public static final int ERROR_UNSUPPORTED_DEPTH = 38;
        public static final int TRANSPARENCY_MASK = 2;
        public static final int ERROR_UNSUPPORTED_FORMAT = 42;
        public static final int TRANSPARENCY_ALPHA = 1;
        public static final int TRANSPARENCY_NONE = 0;
        public static final int TRANSPARENCY_PIXEL = 4;
        public static final int IMAGE_BMP = 0;
        public static final int IMAGE_BMP_RLE = 1;

        SWT() {
        }

        public static void error(int code) {
            throw new RuntimeException("Error " + code);
        }

        public static void error(int code, Throwable t) {
            throw new RuntimeException(t);
        }
    }

    static class WinBMPFileFormat
    extends FileFormat {
        static final int BMPFileHeaderSize = 14;
        static final int BMPHeaderFixedSize = 40;
        int importantColors;

        WinBMPFileFormat() {
        }

        void decompressData(byte[] src, byte[] dest, int stride, int cmp) {
            if (cmp == 1) {
                if (this.decompressRLE8Data(src, src.length, stride, dest, dest.length) <= 0) {
                    SWT.error(40);
                }
                return;
            }
            if (cmp == 2) {
                if (this.decompressRLE4Data(src, src.length, stride, dest, dest.length) <= 0) {
                    SWT.error(40);
                }
                return;
            }
            SWT.error(40);
        }

        int decompressRLE4Data(byte[] src, int numBytes, int stride, byte[] dest, int destSize) {
            int sp = 0;
            int se = numBytes;
            int dp = 0;
            int de = destSize;
            int x = 0;
            int y = 0;
            block5: while (sp < se) {
                int len = src[sp] & 0xFF;
                ++sp;
                if (len == 0) {
                    len = src[sp] & 0xFF;
                    ++sp;
                    switch (len) {
                        case 0: {
                            x = 0;
                            dp = ++y * stride;
                            if (dp < de) continue block5;
                            return -1;
                        }
                        case 1: {
                            return 1;
                        }
                        case 2: {
                            x += src[sp] & 0xFF;
                            y += src[++sp] & 0xFF;
                            ++sp;
                            dp = y * stride + x / 2;
                            if (dp < de) continue block5;
                            return -1;
                        }
                        default: {
                            if ((len & 1) != 0) {
                                return -1;
                            }
                            x += len;
                            if ((len /= 2) > se - sp) {
                                return -1;
                            }
                            if (len > de - dp) {
                                return -1;
                            }
                            int i = 0;
                            while (i < len) {
                                dest[dp] = src[sp];
                                ++dp;
                                ++sp;
                                ++i;
                            }
                            if ((sp & 1) == 0) continue block5;
                            ++sp;
                            break;
                        }
                    }
                    continue;
                }
                if ((len & 1) != 0) {
                    return -1;
                }
                x += len;
                byte theByte = src[sp];
                ++sp;
                if ((len /= 2) > de - dp) {
                    return -1;
                }
                int i = 0;
                while (i < len) {
                    dest[dp] = theByte;
                    ++dp;
                    ++i;
                }
            }
            return 1;
        }

        int decompressRLE8Data(byte[] src, int numBytes, int stride, byte[] dest, int destSize) {
            int sp = 0;
            int se = numBytes;
            int dp = 0;
            int de = destSize;
            int x = 0;
            int y = 0;
            block5: while (sp < se) {
                int len = src[sp] & 0xFF;
                ++sp;
                if (len == 0) {
                    len = src[sp] & 0xFF;
                    ++sp;
                    switch (len) {
                        case 0: {
                            x = 0;
                            dp = ++y * stride;
                            if (dp < de) continue block5;
                            return -1;
                        }
                        case 1: {
                            return 1;
                        }
                        case 2: {
                            x += src[sp] & 0xFF;
                            y += src[++sp] & 0xFF;
                            ++sp;
                            dp = y * stride + x;
                            if (dp < de) continue block5;
                            return -1;
                        }
                        default: {
                            if (len > se - sp) {
                                return -1;
                            }
                            if (len > de - dp) {
                                return -1;
                            }
                            int i = 0;
                            while (i < len) {
                                dest[dp] = src[sp];
                                ++dp;
                                ++sp;
                                ++i;
                            }
                            if ((sp & 1) != 0) {
                                ++sp;
                            }
                            x += len;
                            break;
                        }
                    }
                    continue;
                }
                byte theByte = src[sp];
                ++sp;
                if (len > de - dp) {
                    return -1;
                }
                int i = 0;
                while (i < len) {
                    dest[dp] = theByte;
                    ++dp;
                    ++i;
                }
                x += len;
            }
            return 1;
        }

        boolean isFileFormat(LEDataInputStream stream) {
            try {
                byte[] header = new byte[18];
                stream.read(header);
                stream.unread(header);
                int infoHeaderSize = header[14] & 0xFF | (header[15] & 0xFF) << 8 | (header[16] & 0xFF) << 16 | (header[17] & 0xFF) << 24;
                return header[0] == 66 && header[1] == 77 && infoHeaderSize >= 40;
            }
            catch (Exception exception) {
                return false;
            }
        }

        byte[] loadData(byte[] infoHeader) {
            int width = infoHeader[4] & 0xFF | (infoHeader[5] & 0xFF) << 8 | (infoHeader[6] & 0xFF) << 16 | (infoHeader[7] & 0xFF) << 24;
            int height = infoHeader[8] & 0xFF | (infoHeader[9] & 0xFF) << 8 | (infoHeader[10] & 0xFF) << 16 | (infoHeader[11] & 0xFF) << 24;
            int bitCount = infoHeader[14] & 0xFF | (infoHeader[15] & 0xFF) << 8;
            int stride = (width * bitCount + 7) / 8;
            stride = (stride + 3) / 4 * 4;
            byte[] data = this.loadData(infoHeader, stride);
            this.flipScanLines(data, stride, height);
            return data;
        }

        byte[] loadData(byte[] infoHeader, int stride) {
            int height = infoHeader[8] & 0xFF | (infoHeader[9] & 0xFF) << 8 | (infoHeader[10] & 0xFF) << 16 | (infoHeader[11] & 0xFF) << 24;
            int dataSize = height * stride;
            byte[] data = new byte[dataSize];
            int cmp = infoHeader[16] & 0xFF | (infoHeader[17] & 0xFF) << 8 | (infoHeader[18] & 0xFF) << 16 | (infoHeader[19] & 0xFF) << 24;
            if (cmp == 0) {
                try {
                    if (this.inputStream.read(data) != dataSize) {
                        SWT.error(40);
                    }
                }
                catch (IOException e) {
                    SWT.error(39, e);
                }
            } else {
                int compressedSize = infoHeader[20] & 0xFF | (infoHeader[21] & 0xFF) << 8 | (infoHeader[22] & 0xFF) << 16 | (infoHeader[23] & 0xFF) << 24;
                byte[] compressed = new byte[compressedSize];
                try {
                    if (this.inputStream.read(compressed) != compressedSize) {
                        SWT.error(40);
                    }
                }
                catch (IOException e) {
                    SWT.error(39, e);
                }
                this.decompressData(compressed, data, stride, cmp);
            }
            return data;
        }

        int[] loadFileHeader() {
            int[] header = new int[5];
            try {
                header[0] = this.inputStream.readShort();
                header[1] = this.inputStream.readInt();
                header[2] = this.inputStream.readShort();
                header[3] = this.inputStream.readShort();
                header[4] = this.inputStream.readInt();
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
            if (header[0] != 19778) {
                SWT.error(40);
            }
            return header;
        }

        ImageData[] loadFromByteStream() {
            int[] fileHeader = this.loadFileHeader();
            byte[] infoHeader = new byte[40];
            try {
                this.inputStream.read(infoHeader);
            }
            catch (Exception e) {
                SWT.error(39, e);
            }
            int width = infoHeader[4] & 0xFF | (infoHeader[5] & 0xFF) << 8 | (infoHeader[6] & 0xFF) << 16 | (infoHeader[7] & 0xFF) << 24;
            int height = infoHeader[8] & 0xFF | (infoHeader[9] & 0xFF) << 8 | (infoHeader[10] & 0xFF) << 16 | (infoHeader[11] & 0xFF) << 24;
            int bitCount = infoHeader[14] & 0xFF | (infoHeader[15] & 0xFF) << 8;
            PaletteData palette = this.loadPalette(infoHeader);
            if (this.inputStream.getPosition() < fileHeader[4]) {
                try {
                    this.inputStream.skip(fileHeader[4] - this.inputStream.getPosition());
                }
                catch (IOException e) {
                    SWT.error(39, e);
                }
            }
            byte[] data = this.loadData(infoHeader);
            this.compression = infoHeader[16] & 0xFF | (infoHeader[17] & 0xFF) << 8 | (infoHeader[18] & 0xFF) << 16 | (infoHeader[19] & 0xFF) << 24;
            this.importantColors = infoHeader[36] & 0xFF | (infoHeader[37] & 0xFF) << 8 | (infoHeader[38] & 0xFF) << 16 | (infoHeader[39] & 0xFF) << 24;
            int type = this.compression == 1 || this.compression == 2 ? 1 : 0;
            return new ImageData[]{ImageData.internal_new(width, height, bitCount, palette, 4, data, 0, null, null, -1, -1, type, 0, 0, 0, 0)};
        }

        PaletteData loadPalette(byte[] infoHeader) {
            int depth = infoHeader[14] & 0xFF | (infoHeader[15] & 0xFF) << 8;
            if (depth <= 8) {
                int numColors = infoHeader[32] & 0xFF | (infoHeader[33] & 0xFF) << 8 | (infoHeader[34] & 0xFF) << 16 | (infoHeader[35] & 0xFF) << 24;
                if (numColors == 0) {
                    numColors = 1 << depth;
                } else if (numColors > 256) {
                    numColors = 256;
                }
                byte[] buf = new byte[numColors * 4];
                try {
                    if (this.inputStream.read(buf) != buf.length) {
                        SWT.error(40);
                    }
                }
                catch (IOException e) {
                    SWT.error(39, e);
                }
                return this.paletteFromBytes(buf, numColors);
            }
            if (depth == 16) {
                return new PaletteData(31744, 992, 31);
            }
            if (depth == 24) {
                return new PaletteData(255, 65280, 0xFF0000);
            }
            return new PaletteData(65280, 0xFF0000, -16777216);
        }

        PaletteData paletteFromBytes(byte[] bytes, int numColors) {
            int bytesOffset = 0;
            RGB[] colors = new RGB[numColors];
            int i = 0;
            while (i < numColors) {
                colors[i] = new RGB(bytes[bytesOffset + 2] & 0xFF, bytes[bytesOffset + 1] & 0xFF, bytes[bytesOffset] & 0xFF);
                bytesOffset += 4;
                ++i;
            }
            return new PaletteData(colors);
        }

        static byte[] paletteToBytes(PaletteData pal) {
            int n = pal.colors == null ? 0 : (pal.colors.length < 256 ? pal.colors.length : 256);
            byte[] bytes = new byte[n * 4];
            int offset = 0;
            int i = 0;
            while (i < n) {
                RGB col = pal.colors[i];
                bytes[offset] = (byte)col.blue;
                bytes[offset + 1] = (byte)col.green;
                bytes[offset + 2] = (byte)col.red;
                offset += 4;
                ++i;
            }
            return bytes;
        }

        void flipScanLines(byte[] data, int stride, int height) {
            int i1 = 0;
            int i2 = (height - 1) * stride;
            int i = 0;
            while (i < height / 2) {
                int index = 0;
                while (index < stride) {
                    byte b = data[index + i1];
                    data[index + i1] = data[index + i2];
                    data[index + i2] = b;
                    ++index;
                }
                i1 += stride;
                i2 -= stride;
                ++i;
            }
        }
    }

    static class WinICOFileFormat
    extends FileFormat {
        WinICOFileFormat() {
        }

        static final byte[] convertPad(byte[] data, int width, int height, int depth, int pad, int newPad) {
            if (pad == newPad) {
                return data;
            }
            int stride = (width * depth + 7) / 8;
            int bpl = (stride + (pad - 1)) / pad * pad;
            int newBpl = (stride + (newPad - 1)) / newPad * newPad;
            byte[] newData = new byte[height * newBpl];
            int srcIndex = 0;
            int destIndex = 0;
            int y = 0;
            while (y < height) {
                System.arraycopy(data, srcIndex, newData, destIndex, newBpl);
                srcIndex += bpl;
                destIndex += newBpl;
                ++y;
            }
            return newData;
        }

        int iconSize(ImageData i) {
            int shapeDataStride = (i.width * i.depth + 31) / 32 * 4;
            int maskDataStride = (i.width + 31) / 32 * 4;
            int dataSize = (shapeDataStride + maskDataStride) * i.height;
            int paletteSize = i.palette.colors != null ? i.palette.colors.length * 4 : 0;
            return 40 + paletteSize + dataSize;
        }

        boolean isFileFormat(LEDataInputStream stream) {
            try {
                byte[] header = new byte[4];
                stream.read(header);
                stream.unread(header);
                return header[0] == 0 && header[1] == 0 && header[2] == 1 && header[3] == 0;
            }
            catch (Exception exception) {
                return false;
            }
        }

        boolean isValidIcon(ImageData i) {
            switch (i.depth) {
                case 1: 
                case 4: 
                case 8: {
                    if (i.palette.isDirect) {
                        return false;
                    }
                    int size = i.palette.colors.length;
                    return size == 2 || size == 16 || size == 32 || size == 256;
                }
                case 24: 
                case 32: {
                    return i.palette.isDirect;
                }
            }
            return false;
        }

        int loadFileHeader(LEDataInputStream byteStream) {
            int numIcons;
            int[] fileHeader = new int[3];
            try {
                fileHeader[0] = byteStream.readShort();
                fileHeader[1] = byteStream.readShort();
                fileHeader[2] = byteStream.readShort();
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
            if (fileHeader[0] != 0 || fileHeader[1] != 1) {
                SWT.error(40);
            }
            if ((numIcons = fileHeader[2]) <= 0) {
                SWT.error(40);
            }
            return numIcons;
        }

        int loadFileHeader(LEDataInputStream byteStream, boolean hasHeader) {
            int numIcons;
            int[] fileHeader = new int[3];
            try {
                if (hasHeader) {
                    fileHeader[0] = byteStream.readShort();
                    fileHeader[1] = byteStream.readShort();
                } else {
                    fileHeader[0] = 0;
                    fileHeader[1] = 1;
                }
                fileHeader[2] = byteStream.readShort();
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
            if (fileHeader[0] != 0 || fileHeader[1] != 1) {
                SWT.error(40);
            }
            if ((numIcons = fileHeader[2]) <= 0) {
                SWT.error(40);
            }
            return numIcons;
        }

        ImageData[] loadFromByteStream() {
            int numIcons = this.loadFileHeader(this.inputStream);
            int[][] headers = this.loadIconHeaders(numIcons);
            ImageData[] icons = new ImageData[headers.length];
            int i = 0;
            while (i < icons.length) {
                icons[i] = this.loadIcon(headers[i]);
                ++i;
            }
            return icons;
        }

        ImageData loadIcon(int[] iconHeader) {
            byte[] infoHeader = this.loadInfoHeader(iconHeader);
            WinBMPFileFormat bmpFormat = new WinBMPFileFormat();
            bmpFormat.inputStream = this.inputStream;
            PaletteData palette = bmpFormat.loadPalette(infoHeader);
            byte[] shapeData = bmpFormat.loadData(infoHeader);
            int width = infoHeader[4] & 0xFF | (infoHeader[5] & 0xFF) << 8 | (infoHeader[6] & 0xFF) << 16 | (infoHeader[7] & 0xFF) << 24;
            int height = infoHeader[8] & 0xFF | (infoHeader[9] & 0xFF) << 8 | (infoHeader[10] & 0xFF) << 16 | (infoHeader[11] & 0xFF) << 24;
            int depth = infoHeader[14] & 0xFF | (infoHeader[15] & 0xFF) << 8;
            infoHeader[14] = 1;
            infoHeader[15] = 0;
            byte[] maskData = bmpFormat.loadData(infoHeader);
            maskData = WinICOFileFormat.convertPad(maskData, width, height, 1, 4, 2);
            this.bitInvertData(maskData, 0, maskData.length);
            return ImageData.internal_new(width, height, depth, palette, 4, shapeData, 2, maskData, null, -1, -1, 3, 0, 0, 0, 0);
        }

        int[][] loadIconHeaders(int numIcons) {
            int[][] headers = new int[numIcons][7];
            try {
                int i = 0;
                while (i < numIcons) {
                    headers[i][0] = this.inputStream.read();
                    headers[i][1] = this.inputStream.read();
                    headers[i][2] = this.inputStream.readShort();
                    headers[i][3] = this.inputStream.readShort();
                    headers[i][4] = this.inputStream.readShort();
                    headers[i][5] = this.inputStream.readInt();
                    headers[i][6] = this.inputStream.readInt();
                    ++i;
                }
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
            return headers;
        }

        byte[] loadInfoHeader(int[] iconHeader) {
            int width = iconHeader[0];
            int height = iconHeader[1];
            int numColors = iconHeader[2];
            if (numColors == 0) {
                numColors = 256;
            }
            if (numColors != 2 && numColors != 8 && numColors != 16 && numColors != 32 && numColors != 256) {
                SWT.error(40);
            }
            if (this.inputStream.getPosition() < iconHeader[6]) {
                try {
                    this.inputStream.skip(iconHeader[6] - this.inputStream.getPosition());
                }
                catch (IOException e) {
                    SWT.error(39, e);
                    return null;
                }
            }
            byte[] infoHeader = new byte[40];
            try {
                this.inputStream.read(infoHeader);
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
            if ((infoHeader[12] & 0xFF | (infoHeader[13] & 0xFF) << 8) != 1) {
                SWT.error(40);
            }
            int infoWidth = infoHeader[4] & 0xFF | (infoHeader[5] & 0xFF) << 8 | (infoHeader[6] & 0xFF) << 16 | (infoHeader[7] & 0xFF) << 24;
            int infoHeight = infoHeader[8] & 0xFF | (infoHeader[9] & 0xFF) << 8 | (infoHeader[10] & 0xFF) << 16 | (infoHeader[11] & 0xFF) << 24;
            int bitCount = infoHeader[14] & 0xFF | (infoHeader[15] & 0xFF) << 8;
            if (height == infoHeight && bitCount == 1) {
                height /= 2;
            }
            if (width != infoWidth || height * 2 != infoHeight || bitCount != 1 && bitCount != 4 && bitCount != 8 && bitCount != 24 && bitCount != 32) {
                SWT.error(40);
            }
            infoHeader[8] = (byte)(height & 0xFF);
            infoHeader[9] = (byte)(height >> 8 & 0xFF);
            infoHeader[10] = (byte)(height >> 16 & 0xFF);
            infoHeader[11] = (byte)(height >> 24 & 0xFF);
            return infoHeader;
        }
    }
}

