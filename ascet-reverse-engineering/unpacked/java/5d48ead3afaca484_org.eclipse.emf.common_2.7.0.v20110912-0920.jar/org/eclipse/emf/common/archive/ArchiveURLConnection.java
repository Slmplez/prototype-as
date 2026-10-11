/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.archive;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import org.eclipse.emf.common.util.URI;

public class ArchiveURLConnection
extends URLConnection {
    protected String urlString;

    public ArchiveURLConnection(URL url) {
        super(url);
        this.urlString = url.toString();
    }

    protected ArchiveURLConnection(String url) {
        super(null);
        this.urlString = url;
    }

    protected boolean emulateArchiveScheme() {
        return false;
    }

    protected boolean useZipFile() {
        return false;
    }

    public void connect() throws IOException {
        this.connected = true;
    }

    protected String getNestedURL() throws IOException {
        int archiveSeparator = this.urlString.indexOf("!/");
        if (archiveSeparator < 0) {
            throw new MalformedURLException("missing archive separators " + this.urlString);
        }
        int start = this.urlString.indexOf(58) + 1;
        if (start > this.urlString.length() || this.urlString.charAt(start) == '/') {
            throw new IllegalArgumentException("archive protocol must be immediately followed by another URL protocol " + this.urlString);
        }
        int i = start;
        int end = this.urlString.indexOf("/") - 1;
        while ((i = this.urlString.indexOf(":", i)) < end) {
            if (this.emulateArchiveScheme()) {
                start = ++i;
                continue;
            }
            if ((archiveSeparator = this.urlString.indexOf("!/", archiveSeparator + 2)) < 0) {
                throw new MalformedURLException("too few archive separators " + this.urlString);
            }
            ++i;
        }
        return this.urlString.substring(start, archiveSeparator);
    }

    public InputStream getInputStream() throws IOException {
        String entry;
        InputStream inputStream;
        String nestedURL = this.getNestedURL();
        int archiveSeparator = this.urlString.indexOf(nestedURL) + nestedURL.length();
        int nextArchiveSeparator = this.urlString.indexOf("!/", archiveSeparator + 2);
        ZipEntry inputZipEntry = null;
        if (!this.useZipFile() || !nestedURL.startsWith("file:")) {
            inputStream = this.createInputStream(nestedURL);
        } else {
            InputStream zipEntryInputStream;
            entry = URI.decode(nextArchiveSeparator < 0 ? this.urlString.substring(archiveSeparator + 2) : this.urlString.substring(archiveSeparator + 2, nextArchiveSeparator));
            archiveSeparator = nextArchiveSeparator;
            nextArchiveSeparator = this.urlString.indexOf("!/", archiveSeparator + 2);
            final ZipFile zipFile = new ZipFile(URI.decode(nestedURL.substring(5)));
            inputZipEntry = zipFile.getEntry(entry);
            InputStream inputStream2 = zipEntryInputStream = inputZipEntry == null ? null : zipFile.getInputStream(inputZipEntry);
            if (zipEntryInputStream == null) {
                try {
                    zipFile.close();
                }
                catch (Throwable throwable) {
                    // empty catch block
                }
                throw new IOException("Archive entry not found " + this.urlString);
            }
            inputStream = new FilterInputStream(zipEntryInputStream){

                public void close() throws IOException {
                    super.close();
                    zipFile.close();
                }
            };
        }
        block2: while (archiveSeparator > 0) {
            inputZipEntry = null;
            entry = URI.decode(nextArchiveSeparator < 0 ? this.urlString.substring(archiveSeparator + 2) : this.urlString.substring(archiveSeparator + 2, nextArchiveSeparator));
            ZipInputStream zipInputStream = new ZipInputStream(inputStream);
            while (zipInputStream.available() >= 0) {
                ZipEntry zipEntry = zipInputStream.getNextEntry();
                if (zipEntry == null) break;
                if (!entry.equals(zipEntry.getName())) continue;
                inputZipEntry = zipEntry;
                inputStream = zipInputStream;
                archiveSeparator = nextArchiveSeparator;
                nextArchiveSeparator = this.urlString.indexOf("!/", archiveSeparator + 2);
                continue block2;
            }
            zipInputStream.close();
            throw new IOException("Archive entry not found " + this.urlString);
        }
        return this.yield(inputZipEntry, inputStream);
    }

    protected InputStream yield(ZipEntry zipEntry, InputStream inputStream) throws IOException {
        return inputStream;
    }

    protected InputStream createInputStream(String nestedURL) throws IOException {
        return new URL(nestedURL).openStream();
    }

    public OutputStream getOutputStream() throws IOException {
        return this.getOutputStream(false, -1L);
    }

    public void delete() throws IOException {
        this.getOutputStream(true, -1L).close();
    }

    public void setTimeStamp(long timeStamp) throws IOException {
        this.getOutputStream(false, timeStamp).close();
    }

    private OutputStream getOutputStream(boolean delete, long timeStamp) throws IOException {
        final String nestedURL = this.getNestedURL();
        final File tempFile = File.createTempFile("Archive", "zip");
        tempFile.deleteOnExit();
        InputStream sourceInputStream = null;
        FileOutputStream tempOutputStream = null;
        try {
            ZipEntry outputZipEntry;
            ZipOutputStream zipOutputStream;
            tempOutputStream = new FileOutputStream(tempFile);
            try {
                sourceInputStream = this.createInputStream(nestedURL);
            }
            catch (IOException iOException) {
                // empty catch block
            }
            OutputStream outputStream = tempOutputStream;
            InputStream inputStream = sourceInputStream;
            int archiveSeparator = this.urlString.indexOf(nestedURL) + nestedURL.length();
            int nextArchiveSeparator = this.urlString.indexOf("!/", archiveSeparator + 2);
            final byte[] bytes = new byte[4096];
            boolean found = false;
            do {
                String entry = URI.decode(nextArchiveSeparator < 0 ? this.urlString.substring(archiveSeparator + 2) : this.urlString.substring(archiveSeparator + 2, nextArchiveSeparator));
                zipOutputStream = null;
                ZipInputStream zipInputStream = inputStream == null ? null : new ZipInputStream(inputStream);
                inputStream = zipInputStream;
                while (zipInputStream != null && zipInputStream.available() >= 0) {
                    int size;
                    ZipEntry zipEntry = zipInputStream.getNextEntry();
                    if (zipEntry == null) break;
                    boolean match = entry.equals(zipEntry.getName());
                    if (!found) {
                        boolean bl = found = match && nextArchiveSeparator < 0;
                    }
                    if (timeStamp == -1L && match) continue;
                    if (zipOutputStream == null) {
                        zipOutputStream = new ZipOutputStream(outputStream);
                        outputStream = zipOutputStream;
                    }
                    if (timeStamp != -1L && match && nextArchiveSeparator < 0) {
                        zipEntry.setTime(timeStamp);
                    }
                    zipOutputStream.putNextEntry(zipEntry);
                    while ((size = zipInputStream.read(bytes, 0, bytes.length)) > -1) {
                        zipOutputStream.write(bytes, 0, size);
                    }
                }
                archiveSeparator = nextArchiveSeparator;
                nextArchiveSeparator = this.urlString.indexOf("!/", archiveSeparator + 2);
                if ((delete || timeStamp != -1L) && archiveSeparator < 0) {
                    if (!found) {
                        throw new IOException("Archive entry not found " + this.urlString);
                    }
                    outputZipEntry = null;
                    break;
                }
                outputZipEntry = new ZipEntry(entry);
                if (zipOutputStream == null) {
                    zipOutputStream = new ZipOutputStream(outputStream);
                    outputStream = zipOutputStream;
                }
                zipOutputStream.putNextEntry(outputZipEntry);
            } while (archiveSeparator > 0);
            tempOutputStream = null;
            final boolean deleteRequired = sourceInputStream != null;
            FilterOutputStream result = new FilterOutputStream(zipOutputStream == null ? outputStream : zipOutputStream){
                protected boolean isClosed;

                public void close() throws IOException {
                    if (!this.isClosed) {
                        this.isClosed = true;
                        super.close();
                        boolean useRenameTo = nestedURL.startsWith("file:");
                        if (useRenameTo) {
                            File targetFile = new File(URI.decode(nestedURL.substring(5)));
                            if (deleteRequired && !targetFile.delete()) {
                                throw new IOException("cannot delete " + targetFile.getPath());
                            }
                            if (!tempFile.renameTo(targetFile)) {
                                useRenameTo = false;
                            }
                        }
                        if (!useRenameTo) {
                            FileInputStream inputStream = null;
                            OutputStream outputStream = null;
                            try {
                                int size;
                                inputStream = new FileInputStream(tempFile);
                                outputStream = ArchiveURLConnection.this.createOutputStream(nestedURL);
                                while ((size = ((InputStream)inputStream).read(bytes, 0, bytes.length)) > -1) {
                                    outputStream.write(bytes, 0, size);
                                }
                            }
                            finally {
                                if (inputStream != null) {
                                    ((InputStream)inputStream).close();
                                }
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                            }
                        }
                        tempFile.delete();
                    }
                }
            };
            FilterOutputStream filterOutputStream = outputZipEntry == null ? result : this.yield(outputZipEntry, result);
            return filterOutputStream;
        }
        finally {
            if (tempOutputStream != null) {
                ((OutputStream)tempOutputStream).close();
            }
            if (sourceInputStream != null) {
                sourceInputStream.close();
            }
        }
    }

    protected OutputStream yield(ZipEntry zipEntry, OutputStream outputStream) throws IOException {
        return outputStream;
    }

    protected OutputStream createOutputStream(String nestedURL) throws IOException {
        URL url = new URL(nestedURL);
        URLConnection urlConnection = url.openConnection();
        urlConnection.setDoOutput(true);
        return urlConnection.getOutputStream();
    }
}

