/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.reliablefile;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;

public class ReliableFile {
    public static final int OPEN_BEST_AVAILABLE = 0;
    public static final int OPEN_FAIL_ON_PRIMARY = 1;
    public static final int GENERATION_LATEST = 0;
    public static final int GENERATIONS_INFINITE = 0;
    public static final String tmpExt = ".tmp";
    public static final String PROP_MAX_BUFFER = "osgi.reliableFile.maxInputStreamBuffer";
    public static final String PROP_MAX_GENERATIONS = "osgi.ReliableFile.maxGenerations";
    public static final String PROP_OSGI_LOCKING = "osgi.locking";
    private static final int FILETYPE_VALID = 0;
    private static final int FILETYPE_CORRUPT = 1;
    private static final int FILETYPE_NOSIGNATURE = 2;
    private static final byte[] identifier1 = new byte[]{46, 99, 114, 99};
    private static final byte[] identifier2 = new byte[]{46, 118, 49, 10};
    private static final int BUF_SIZE = 4096;
    private static final int maxInputStreamBuffer;
    private static final int defaultMaxGenerations;
    private static final boolean fileSharing;
    private static File lastGenerationFile;
    private static int[] lastGenerations;
    private static final Object lastGenerationLock;
    private File referenceFile;
    private static Hashtable<File, CacheInfo> cacheFiles;
    private File inputFile = null;
    private File outputFile = null;
    private Checksum appendChecksum = null;

    static {
        lastGenerationFile = null;
        lastGenerations = null;
        lastGenerationLock = new Object();
        String prop = FrameworkProperties.getProperty(PROP_MAX_BUFFER);
        int tmpMaxInput = 131072;
        if (prop != null) {
            try {
                tmpMaxInput = Integer.parseInt(prop);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        maxInputStreamBuffer = tmpMaxInput;
        int tmpDefaultMax = 2;
        prop = FrameworkProperties.getProperty(PROP_MAX_GENERATIONS);
        if (prop != null) {
            try {
                tmpDefaultMax = Integer.parseInt(prop);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        defaultMaxGenerations = tmpDefaultMax;
        prop = FrameworkProperties.getProperty(PROP_OSGI_LOCKING);
        boolean tmpFileSharing = true;
        if (prop != null && prop.equals("none")) {
            tmpFileSharing = false;
        }
        fileSharing = tmpFileSharing;
        cacheFiles = new Hashtable(20);
    }

    static ReliableFile getReliableFile(String name) throws IOException {
        return ReliableFile.getReliableFile(new File(name));
    }

    static ReliableFile getReliableFile(File file) throws IOException {
        if (file.isDirectory()) {
            throw new FileNotFoundException("file is a directory");
        }
        return new ReliableFile(file);
    }

    private ReliableFile(File file) {
        this.referenceFile = file;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static int[] getFileGenerations(File file) {
        int[] nArray;
        block32: {
            Object object;
            ArrayList<Integer> list;
            int[] generations;
            block30: {
                block31: {
                    String[] files;
                    int prefixLen;
                    String prefix;
                    block28: {
                        block29: {
                            if (!fileSharing) {
                                Object object2 = lastGenerationLock;
                                synchronized (object2) {
                                    if (lastGenerationFile != null && file.equals(lastGenerationFile)) {
                                        return lastGenerations;
                                    }
                                }
                            }
                            generations = null;
                            String name = file.getName();
                            prefix = String.valueOf(name) + '.';
                            prefixLen = prefix.length();
                            File parent = new File(file.getParent());
                            files = parent.list();
                            if (files != null) break block28;
                            if (fileSharing) break block29;
                            Object object3 = lastGenerationLock;
                            synchronized (object3) {
                                lastGenerationFile = file;
                                lastGenerations = generations;
                            }
                        }
                        return null;
                    }
                    list = new ArrayList<Integer>(defaultMaxGenerations);
                    if (file.exists()) {
                        list.add(new Integer(0));
                    }
                    int i = 0;
                    while (i < files.length) {
                        if (files[i].startsWith(prefix)) {
                            try {
                                int id = Integer.parseInt(files[i].substring(prefixLen));
                                list.add(new Integer(id));
                            }
                            catch (NumberFormatException numberFormatException) {}
                        }
                        ++i;
                    }
                    if (list.size() != 0) break block30;
                    if (fileSharing) break block31;
                    Object object4 = lastGenerationLock;
                    synchronized (object4) {
                        lastGenerationFile = file;
                        lastGenerations = generations;
                    }
                }
                return null;
            }
            try {
                Object[] array = list.toArray();
                Arrays.sort(array);
                generations = new int[array.length];
                int i = 0;
                int j = array.length - 1;
                while (i < array.length) {
                    generations[i] = (Integer)array[j];
                    ++i;
                    --j;
                }
                nArray = generations;
                if (fileSharing) break block32;
                object = lastGenerationLock;
            }
            catch (Throwable throwable) {
                if (!fileSharing) {
                    Object object5 = lastGenerationLock;
                    synchronized (object5) {
                        lastGenerationFile = file;
                        lastGenerations = generations;
                    }
                }
                throw throwable;
            }
            synchronized (object) {
                lastGenerationFile = file;
                lastGenerations = generations;
            }
        }
        return nArray;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    InputStream getInputStream(int generation, int openMask) throws IOException {
        boolean failOnPrimary;
        if (this.inputFile != null) {
            throw new IOException("Input stream already open");
        }
        int[] generations = ReliableFile.getFileGenerations(this.referenceFile);
        if (generations == null) {
            throw new FileNotFoundException("File not found");
        }
        String name = this.referenceFile.getName();
        File parent = new File(this.referenceFile.getParent());
        boolean bl = failOnPrimary = (openMask & 1) != 0;
        if (failOnPrimary && generation == 0) {
            generation = generations[0];
        }
        File textFile = null;
        InputStream textIS = null;
        int idx = 0;
        while (idx < generations.length) {
            if (generation == 0 || generations[idx] <= generation && (!failOnPrimary || generations[idx] == generation)) {
                CacheInfo info;
                File file = generations[idx] != 0 ? new File(parent, String.valueOf(name) + '.' + generations[idx]) : this.referenceFile;
                InputStream is = null;
                Hashtable<File, CacheInfo> hashtable = cacheFiles;
                synchronized (hashtable) {
                    info = cacheFiles.get(file);
                    long timeStamp = file.lastModified();
                    if (info == null || timeStamp != info.timeStamp) {
                        try {
                            is = new FileInputStream(file);
                            if (((InputStream)is).available() < maxInputStreamBuffer) {
                                is = new BufferedInputStream(is);
                            }
                            Checksum cksum = this.getChecksumCalculator();
                            int filetype = this.getStreamType(is, cksum);
                            info = new CacheInfo(filetype, cksum, timeStamp);
                            cacheFiles.put(file, info);
                        }
                        catch (IOException iOException) {}
                    }
                }
                if (failOnPrimary) {
                    if (info != null && info.filetype == 0) {
                        this.inputFile = file;
                        if (is != null) {
                            return is;
                        }
                        return new FileInputStream(file);
                    }
                    throw new IOException("ReliableFile is corrupt");
                }
                if (info != null) {
                    switch (info.filetype) {
                        case 0: {
                            this.inputFile = file;
                            if (is != null) {
                                return is;
                            }
                            return new FileInputStream(file);
                        }
                        case 2: {
                            if (textFile != null) break;
                            textFile = file;
                            textIS = is;
                        }
                    }
                }
            }
            ++idx;
        }
        if (textFile != null) {
            this.inputFile = textFile;
            if (textIS != null) {
                return textIS;
            }
            return new FileInputStream(textFile);
        }
        throw new IOException("ReliableFile is corrupt");
    }

    OutputStream getOutputStream(boolean append, int appendGeneration) throws IOException {
        InputStream is;
        if (this.outputFile != null) {
            throw new IOException("Output stream is already open");
        }
        String name = this.referenceFile.getName();
        File parent = new File(this.referenceFile.getParent());
        File tmpFile = File.createTempFile(name, tmpExt, parent);
        if (!append) {
            FileOutputStream os = new FileOutputStream(tmpFile);
            this.outputFile = tmpFile;
            return os;
        }
        try {
            is = this.getInputStream(appendGeneration, 0);
        }
        catch (FileNotFoundException fileNotFoundException) {
            FileOutputStream os = new FileOutputStream(tmpFile);
            this.outputFile = tmpFile;
            return os;
        }
        try {
            CacheInfo info = cacheFiles.get(this.inputFile);
            this.appendChecksum = info.checksum;
            FileOutputStream os = new FileOutputStream(tmpFile);
            if (info.filetype == 2) {
                ReliableFile.cp(is, os, 0);
            } else {
                ReliableFile.cp(is, os, 16);
            }
            this.outputFile = tmpFile;
            FileOutputStream fileOutputStream = os;
            return fileOutputStream;
        }
        finally {
            this.closeInputFile();
        }
    }

    void closeOutputFile(Checksum checksum) throws IOException {
        if (this.outputFile == null) {
            throw new IOException("Output stream is not open");
        }
        int[] generations = ReliableFile.getFileGenerations(this.referenceFile);
        String name = this.referenceFile.getName();
        File parent = new File(this.referenceFile.getParent());
        File newFile = generations == null ? new File(parent, String.valueOf(name) + ".1") : new File(parent, String.valueOf(name) + '.' + (generations[0] + 1));
        ReliableFile.mv(this.outputFile, newFile);
        this.outputFile = null;
        this.appendChecksum = null;
        CacheInfo info = new CacheInfo(0, checksum, newFile.lastModified());
        cacheFiles.put(newFile, info);
        this.cleanup(generations, true);
        lastGenerationFile = null;
        lastGenerations = null;
    }

    void abortOutputFile() {
        if (this.outputFile == null) {
            return;
        }
        this.outputFile.delete();
        this.outputFile = null;
        this.appendChecksum = null;
    }

    File getOutputFile() {
        return this.outputFile;
    }

    void closeInputFile() {
        this.inputFile = null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void cleanup(int[] generations, boolean generationAdded) {
        if (generations == null) {
            return;
        }
        String name = this.referenceFile.getName();
        File parent = new File(this.referenceFile.getParent());
        int generationCount = generations.length;
        if (generations[generationCount - 1] == 0) {
            --generationCount;
        }
        int rmCount = generationCount - defaultMaxGenerations;
        if (generationAdded) {
            ++rmCount;
        }
        if (rmCount < 1) {
            return;
        }
        Hashtable<File, CacheInfo> hashtable = cacheFiles;
        synchronized (hashtable) {
            int idx = 0;
            int count = generationCount - rmCount;
            while (idx < count) {
                File file = new File(parent, String.valueOf(name) + '.' + generations[idx]);
                CacheInfo info = cacheFiles.get(file);
                if (info != null && info.filetype == 1) {
                    --rmCount;
                }
                ++idx;
            }
            idx = generationCount - 1;
            while (rmCount > 0) {
                File rmFile = new File(parent, String.valueOf(name) + '.' + generations[idx]);
                rmFile.delete();
                cacheFiles.remove(rmFile);
                --idx;
                --rmCount;
            }
        }
    }

    private static void mv(File from, File to) throws IOException {
        if (!from.renameTo(to)) {
            throw new IOException("rename failed");
        }
    }

    private static void cp(InputStream in, OutputStream out, int truncateSize) throws IOException {
        try {
            int length = in.available();
            length = truncateSize > length ? 0 : (length -= truncateSize);
            if (length > 0) {
                int count;
                int bufferSize = length > 4096 ? 4096 : length;
                byte[] buffer = new byte[bufferSize];
                int size = 0;
                while ((count = in.read(buffer, 0, length)) > 0) {
                    if (size + count >= length) {
                        count = length - size;
                    }
                    out.write(buffer, 0, count);
                    size += count;
                }
            }
        }
        catch (Throwable throwable) {
            try {
                in.close();
            }
            catch (IOException iOException) {}
            out.close();
            throw throwable;
        }
        try {
            in.close();
        }
        catch (IOException iOException) {}
        out.close();
    }

    public static boolean exists(File file) {
        String prefix = String.valueOf(file.getName()) + '.';
        File parent = new File(file.getParent());
        int prefixLen = prefix.length();
        String[] files = parent.list();
        if (files == null) {
            return false;
        }
        int i = 0;
        while (i < files.length) {
            if (files[i].startsWith(prefix)) {
                try {
                    Integer.parseInt(files[i].substring(prefixLen));
                    return true;
                }
                catch (NumberFormatException numberFormatException) {}
            }
            ++i;
        }
        return file.exists();
    }

    public static long lastModified(File file) {
        int[] generations = ReliableFile.getFileGenerations(file);
        if (generations == null) {
            return 0L;
        }
        if (generations[0] == 0) {
            return file.lastModified();
        }
        String name = file.getName();
        File parent = new File(file.getParent());
        File newFile = new File(parent, String.valueOf(name) + '.' + generations[0]);
        return newFile.lastModified();
    }

    public long lastModified() {
        if (this.inputFile != null) {
            return this.inputFile.lastModified();
        }
        return 0L;
    }

    public static int lastModifiedVersion(File file) {
        int[] generations = ReliableFile.getFileGenerations(file);
        if (generations == null) {
            return -1;
        }
        return generations[0];
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static boolean delete(File deleteFile) {
        int[] generations = ReliableFile.getFileGenerations(deleteFile);
        if (generations == null) {
            return false;
        }
        String name = deleteFile.getName();
        File parent = new File(deleteFile.getParent());
        Hashtable<File, CacheInfo> hashtable = cacheFiles;
        synchronized (hashtable) {
            int idx = 0;
            while (idx < generations.length) {
                if (generations[idx] != 0) {
                    File file = new File(parent, String.valueOf(name) + '.' + generations[idx]);
                    if (file.exists()) {
                        file.delete();
                    }
                    cacheFiles.remove(file);
                }
                ++idx;
            }
        }
        return true;
    }

    public static String[] getBaseFiles(File directory) throws IOException {
        if (!directory.isDirectory()) {
            throw new IOException("Not a valid directory");
        }
        String[] files = directory.list();
        HashSet<String> list = new HashSet<String>(files.length / 2);
        int idx = 0;
        while (idx < files.length) {
            String file = files[idx];
            int pos = file.lastIndexOf(46);
            if (pos != -1) {
                String ext = file.substring(pos + 1);
                int generation = 0;
                try {
                    generation = Integer.parseInt(ext);
                }
                catch (NumberFormatException numberFormatException) {}
                if (generation != 0) {
                    String base = file.substring(0, pos);
                    list.add(base);
                }
            }
            ++idx;
        }
        files = new String[list.size()];
        idx = 0;
        Iterator iter = list.iterator();
        while (iter.hasNext()) {
            files[idx++] = (String)iter.next();
        }
        return files;
    }

    public static void cleanupGenerations(File base) {
        ReliableFile rf = new ReliableFile(base);
        int[] generations = ReliableFile.getFileGenerations(base);
        rf.cleanup(generations, false);
        lastGenerationFile = null;
        lastGenerations = null;
    }

    public static void fileUpdated(File file) {
        lastGenerationFile = null;
        lastGenerations = null;
    }

    void writeChecksumSignature(OutputStream out, Checksum checksum) throws IOException {
        out.write(identifier1);
        out.write(ReliableFile.intToHex((int)checksum.getValue()));
        out.write(identifier2);
    }

    int getSignatureSize() throws IOException {
        CacheInfo info;
        if (this.inputFile != null && (info = cacheFiles.get(this.inputFile)) != null) {
            switch (info.filetype) {
                case 0: 
                case 1: {
                    return 16;
                }
                case 2: {
                    return 0;
                }
            }
        }
        throw new IOException("ReliableFile signature size is unknown");
    }

    Checksum getFileChecksum() throws IOException {
        if (this.appendChecksum == null) {
            throw new IOException("Checksum is invalid!");
        }
        return this.appendChecksum;
    }

    Checksum getChecksumCalculator() {
        return new CRC32();
    }

    private int getStreamType(InputStream is, Checksum crc) throws IOException {
        boolean markSupported = is.markSupported();
        if (markSupported) {
            is.mark(is.available());
        }
        try {
            long crccmp;
            int len = is.available();
            if (len < 16) {
                byte[] data;
                int num;
                if (crc != null && (num = is.read(data = new byte[16])) > 0) {
                    crc.update(data, 0, num);
                }
                return 2;
            }
            len -= 16;
            int pos = 0;
            byte[] data = new byte[4096];
            while (pos < len) {
                int num;
                int read = data.length;
                if (pos + read > len) {
                    read = len - pos;
                }
                if ((num = is.read(data, 0, read)) == -1) {
                    throw new IOException("Unable to read entire file.");
                }
                crc.update(data, 0, num);
                pos += num;
            }
            int num = is.read(data);
            if (num != 16) {
                throw new IOException("Unable to read entire file.");
            }
            int i = 0;
            while (i < 4) {
                if (identifier1[i] != data[i]) {
                    crc.update(data, 0, 16);
                    return 2;
                }
                ++i;
            }
            i = 0;
            int j = 12;
            while (i < 4) {
                if (identifier2[i] != data[j]) {
                    crc.update(data, 0, 16);
                    return 2;
                }
                ++i;
                ++j;
            }
            try {
                crccmp = Long.valueOf(new String(data, 4, 8, "UTF-8"), 16);
            }
            catch (UnsupportedEncodingException unsupportedEncodingException) {
                crccmp = Long.valueOf(new String(data, 4, 8), 16);
            }
            if (crccmp == crc.getValue()) {
                return 0;
            }
            return 1;
        }
        finally {
            if (markSupported) {
                is.reset();
            }
        }
    }

    private static byte[] intToHex(int l) {
        byte[] buffer = new byte[8];
        int count = 8;
        do {
            int ch;
            ch = (ch = l & 0xF) > 9 ? ch - 10 + 97 : (ch += 48);
            buffer[--count] = (byte)ch;
            l >>= 4;
        } while (count > 0);
        return buffer;
    }

    private class CacheInfo {
        int filetype;
        Checksum checksum;
        long timeStamp;

        CacheInfo(int filetype, Checksum checksum, long timeStamp) {
            this.filetype = filetype;
            this.checksum = checksum;
            this.timeStamp = timeStamp;
        }
    }
}

