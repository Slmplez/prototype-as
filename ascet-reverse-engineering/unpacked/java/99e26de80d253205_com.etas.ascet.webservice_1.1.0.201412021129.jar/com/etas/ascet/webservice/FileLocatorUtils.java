/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package com.etas.ascet.webservice;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Paths;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public final class FileLocatorUtils {
    private FileLocatorUtils() {
    }

    public static URL getAbslouteFileUrl(String fileName) throws URISyntaxException, IOException {
        return FileLocatorUtils.getAbslouteFileUrl(FileLocatorUtils.class, fileName);
    }

    public static URL getAbslouteFileUrl(Class<?> contextClass, String fileName) throws URISyntaxException, IOException {
        URL resourceUrl = contextClass.getResource(fileName);
        if (resourceUrl == null) {
            throw new FileNotFoundException(FileLocatorUtils.getFileNotFoundErroMessage(fileName));
        }
        FileLocatorUtils.checkFileExists(fileName, resourceUrl);
        return resourceUrl;
    }

    public static IPath getAbsoluteFilePath(String fileName) throws URISyntaxException, IOException {
        URL resourceUrl = FileLocatorUtils.getAbslouteFileUrl(fileName);
        File file = FileLocatorUtils.checkFileExists(fileName, resourceUrl);
        return new Path(file.getAbsolutePath());
    }

    public static IPath getAbsoluteFilePath(Class<?> contextClass, String fileName) throws URISyntaxException, IOException {
        URL resourceUrl = FileLocatorUtils.getAbslouteFileUrl(contextClass, fileName);
        File file = FileLocatorUtils.checkFileExists(fileName, resourceUrl);
        return new Path(file.toURI().getPath());
    }

    public static File getAbsoluteFile(Class<?> contextClass, String relativePath) throws IOException {
        try {
            return FileLocatorUtils.getAbsoluteFilePath(contextClass, relativePath).toFile();
        }
        catch (URISyntaxException ex) {
            throw new IOException("File not found at " + relativePath, ex);
        }
    }

    public static java.nio.file.Path getAbsolutePath(Class<?> contextClass, String relativePath) throws IOException {
        try {
            return Paths.get(FileLocatorUtils.getAbsoluteFilePath(contextClass, relativePath).toFile().toURI());
        }
        catch (URISyntaxException ex) {
            throw new IOException("Path not found at " + relativePath, ex);
        }
    }

    private static File checkFileExists(String fileName, URL resourceUrl) throws IOException {
        File file;
        URL localUrl = resourceUrl;
        if (!"file".equals(resourceUrl.getProtocol())) {
            localUrl = FileLocator.toFileURL((URL)resourceUrl);
        }
        if (!(file = new File(localUrl.getPath())).exists()) {
            throw new FileNotFoundException(FileLocatorUtils.getFileNotFoundErroMessage(fileName));
        }
        return file;
    }

    private static String getFileNotFoundErroMessage(String fileName) {
        return String.format("File with name '%s' could not be found. Please try to prefix the file name with the folder structure without the src folder but with leading '/'", fileName);
    }
}

