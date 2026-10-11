/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IProductObject;

public interface ILauncherInfo
extends IProductObject {
    public static final String LINUX_ICON = "linuxIcon";
    public static final String MACOSX_ICON = "macosxIcon";
    public static final String SOLARIS_LARGE = "solarisLarge";
    public static final String SOLARIS_MEDIUM = "solarisMedium";
    public static final String SOLARIS_SMALL = "solarisSmall";
    public static final String SOLARIS_TINY = "solarisTiny";
    public static final String WIN32_16_LOW = "winSmallLow";
    public static final String WIN32_16_HIGH = "winSmallHigh";
    public static final String WIN32_32_LOW = "winMediumLow";
    public static final String WIN32_32_HIGH = "winMediumHigh";
    public static final String WIN32_48_LOW = "winLargeLow";
    public static final String WIN32_48_HIGH = "winLargeHigh";
    public static final String P_USE_ICO = "useIco";
    public static final String P_ICO_PATH = "icoFile";
    public static final String P_LAUNCHER = "launcher";

    public String getLauncherName();

    public void setLauncherName(String var1);

    public void setIconPath(String var1, String var2);

    public String getIconPath(String var1);

    public boolean usesWinIcoFile();

    public void setUseWinIcoFile(boolean var1);
}

