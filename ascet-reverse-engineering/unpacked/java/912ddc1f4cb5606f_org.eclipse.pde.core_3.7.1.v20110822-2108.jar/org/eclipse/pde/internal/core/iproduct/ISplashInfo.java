/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IProductObject;

public interface ISplashInfo
extends IProductObject {
    public static final String P_LOCATION = "location";
    public static final String P_PROGRESS_GEOMETRY = "startupProgressRect";
    public static final String P_MESSAGE_GEOMETRY = "startupMessageRect";
    public static final String P_FOREGROUND_COLOR = "startupForegroundColor";
    public static final String F_ATTRIBUTE_HANDLER_TYPE = "handlerType";

    public void setLocation(String var1, boolean var2);

    public String getLocation();

    public void addProgressBar(boolean var1, boolean var2);

    public void setProgressGeometry(int[] var1, boolean var2);

    public int[] getProgressGeometry();

    public void addProgressMessage(boolean var1, boolean var2);

    public void setMessageGeometry(int[] var1, boolean var2);

    public int[] getMessageGeometry();

    public void setForegroundColor(String var1, boolean var2) throws IllegalArgumentException;

    public String getForegroundColor();

    public void setFieldSplashHandlerType(String var1, boolean var2);

    public String getFieldSplashHandlerType();

    public boolean isDefinedSplashHandlerType();

    public boolean isDefinedGeometry();
}

