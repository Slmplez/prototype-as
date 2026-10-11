/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import java.io.File;

public interface IPath
extends Cloneable {
    public static final char SEPARATOR = '/';
    public static final char DEVICE_SEPARATOR = ':';

    public IPath addFileExtension(String var1);

    public IPath addTrailingSeparator();

    public IPath append(String var1);

    public IPath append(IPath var1);

    public Object clone();

    public boolean equals(Object var1);

    public String getDevice();

    public String getFileExtension();

    public boolean hasTrailingSeparator();

    public boolean isAbsolute();

    public boolean isEmpty();

    public boolean isPrefixOf(IPath var1);

    public boolean isRoot();

    public boolean isUNC();

    public boolean isValidPath(String var1);

    public boolean isValidSegment(String var1);

    public String lastSegment();

    public IPath makeAbsolute();

    public IPath makeRelative();

    public IPath makeRelativeTo(IPath var1);

    public IPath makeUNC(boolean var1);

    public int matchingFirstSegments(IPath var1);

    public IPath removeFileExtension();

    public IPath removeFirstSegments(int var1);

    public IPath removeLastSegments(int var1);

    public IPath removeTrailingSeparator();

    public String segment(int var1);

    public int segmentCount();

    public String[] segments();

    public IPath setDevice(String var1);

    public File toFile();

    public String toOSString();

    public String toPortableString();

    public String toString();

    public IPath uptoSegment(int var1);
}

