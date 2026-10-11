/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.archive;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import org.eclipse.emf.common.archive.ArchiveURLConnection;

public class Handler
extends URLStreamHandler {
    public static void register() {
        String javaProtocolHandlerPkgs = System.getProperty("java.protocol.handler.pkgs");
        javaProtocolHandlerPkgs = javaProtocolHandlerPkgs == null || javaProtocolHandlerPkgs.length() == 0 ? "org.eclipse.emf.common" : String.valueOf(javaProtocolHandlerPkgs) + "|org.eclipse.emf.common";
        System.setProperty("java.protocol.handler.pkgs", javaProtocolHandlerPkgs);
    }

    public static void main(String[] args) throws IOException {
        Handler.register();
        int i = 0;
        while (i < args.length) {
            int size;
            InputStream inputStream = new URL(args[i]).openStream();
            byte[] bytes = new byte[4048];
            while ((size = inputStream.read(bytes, 0, bytes.length)) > -1) {
                System.out.write(bytes, 0, size);
            }
            ++i;
        }
    }

    protected void parseURL(URL url, String specification, int start, int limit) {
        super.parseURL(url, specification, start, limit);
        if (start > limit || specification.charAt(start) == '/') {
            throw new IllegalArgumentException("archive protocol must be immediately followed by another URL protocol " + specification);
        }
        int archiveSeparator = specification.indexOf("!/", start);
        if (archiveSeparator < 0) {
            throw new IllegalArgumentException("missing archive separators " + specification.substring(start, limit));
        }
        int i = start;
        int end = specification.indexOf(47, start) - 1;
        while ((i = specification.indexOf(58, i)) < end) {
            if ((archiveSeparator = specification.indexOf("!/", archiveSeparator + 2)) < 0) {
                throw new IllegalArgumentException("too few archive separators " + specification);
            }
            ++i;
        }
    }

    protected URLConnection openConnection(URL url) throws IOException {
        return new ArchiveURLConnection(url);
    }
}

