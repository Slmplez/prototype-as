/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import java.util.StringTokenizer;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.iproduct.ISplashInfo;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class SplashInfo
extends ProductObject
implements ISplashInfo {
    public static final int F_DEFAULT_BAR_X_OFFSET = 5;
    public static final int F_DEFAULT_BAR_Y_OFFSET = 275;
    public static final int F_DEFAULT_BAR_WIDTH = 445;
    public static final int F_DEFAULT_BAR_HEIGHT = 15;
    public static final int F_DEFAULT_MESSAGE_X_OFFSET = 7;
    public static final int F_DEFAULT_MESSAGE_Y_OFFSET = 252;
    public static final int F_DEFAULT_MESSAGE_WIDTH = 445;
    public static final int F_DEFAULT_MESSAGE_HEIGHT = 20;
    private static final char[] VALID_HEX_CHARS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final long serialVersionUID = 1L;
    private String fLocation;
    private boolean fCustomizeProgressBar;
    private int[] fProgressGeometry;
    private boolean fCustomizeProgressMessage;
    private int[] fMessageGeometry;
    private boolean fCustomizeForegroundColor;
    private String fForegroundColor;
    private String fFieldSplashHandlerType;

    public SplashInfo(IProductModel model) {
        super(model);
    }

    public void setLocation(String location, boolean blockNotification) {
        String old = this.fLocation;
        this.fLocation = location;
        if (!blockNotification && this.isEditable()) {
            this.firePropertyChanged("location", old, this.fLocation);
        }
    }

    public String getLocation() {
        return this.fLocation;
    }

    public void parse(Node node) {
        if (node.getNodeType() == 1) {
            Element element = (Element)node;
            this.setLocation(element.getAttribute("location"), true);
            this.setProgressGeometry(SplashInfo.getGeometryArray(element.getAttribute("startupProgressRect")), true);
            this.setMessageGeometry(SplashInfo.getGeometryArray(element.getAttribute("startupMessageRect")), true);
            this.setForegroundColor(element.getAttribute("startupForegroundColor"), true);
            this.setFieldSplashHandlerType(element.getAttribute("handlerType"), true);
        }
    }

    public void write(String indent, PrintWriter writer) {
        if (!this.hasData()) {
            return;
        }
        writer.print(String.valueOf(indent) + "<splash");
        if (this.fLocation != null && this.fLocation.length() > 0) {
            this.writeProperty(indent, writer, "location", this.getWritableString(this.fLocation));
        }
        String progres = SplashInfo.getGeometryString(this.fProgressGeometry);
        if (this.fCustomizeProgressBar && progres != null) {
            this.writeProperty(indent, writer, "startupProgressRect", this.getWritableString(progres));
        }
        String message = SplashInfo.getGeometryString(this.fMessageGeometry);
        if (this.fCustomizeProgressMessage && message != null) {
            this.writeProperty(indent, writer, "startupMessageRect", this.getWritableString(message));
        }
        if (this.fCustomizeForegroundColor && this.isValidHexValue(this.fForegroundColor)) {
            this.writeProperty(indent, writer, "startupForegroundColor", this.getWritableString(this.fForegroundColor));
        }
        if (this.isDefinedSplashHandlerType()) {
            this.writeProperty(indent, writer, "handlerType", this.fFieldSplashHandlerType);
        }
        writer.print(" />");
    }

    private void writeProperty(String indent, PrintWriter writer, String name, String value) {
        writer.println();
        writer.print(String.valueOf(indent) + indent + name + "=\"" + value + "\"");
    }

    public void setProgressGeometry(int[] geo, boolean blockNotification) {
        this.fCustomizeProgressBar = geo != null;
        int[] old = this.fProgressGeometry;
        this.fProgressGeometry = geo;
        if (!blockNotification && this.isEditable()) {
            this.firePropertyChanged("startupProgressRect", old, this.fProgressGeometry);
        }
    }

    public int[] getProgressGeometry() {
        return this.fCustomizeProgressBar ? this.fProgressGeometry : null;
    }

    public void setMessageGeometry(int[] geo, boolean blockNotification) {
        this.fCustomizeProgressMessage = geo != null;
        int[] old = this.fMessageGeometry;
        this.fMessageGeometry = geo;
        if (!blockNotification && this.isEditable()) {
            this.firePropertyChanged("startupMessageRect", old, this.fMessageGeometry);
        }
    }

    public int[] getMessageGeometry() {
        return this.fCustomizeProgressMessage ? this.fMessageGeometry : null;
    }

    public void setForegroundColor(String hexColor, boolean blockNotification) throws IllegalArgumentException {
        if (hexColor != null && hexColor.length() == 0) {
            hexColor = null;
        }
        if (hexColor != null && !this.isValidHexValue(hexColor)) {
            throw new IllegalArgumentException();
        }
        this.fCustomizeForegroundColor = hexColor != null;
        String old = this.fForegroundColor;
        this.fForegroundColor = hexColor;
        if (!blockNotification && this.isEditable()) {
            this.firePropertyChanged("startupForegroundColor", old, this.fForegroundColor);
        }
    }

    public String getForegroundColor() {
        return this.fCustomizeForegroundColor ? this.fForegroundColor : null;
    }

    public static String getGeometryString(int[] geometry) {
        if (geometry == null || geometry.length < 4) {
            return null;
        }
        return String.valueOf(Integer.toString(geometry[0])) + "," + Integer.toString(geometry[1]) + "," + Integer.toString(geometry[2]) + "," + Integer.toString(geometry[3]);
    }

    public static int[] getGeometryArray(String tokenizedValue) {
        if (tokenizedValue == null || tokenizedValue.length() == 0) {
            return null;
        }
        StringTokenizer tokenizer = new StringTokenizer(tokenizedValue, ",");
        int position = 0;
        int[] geo = new int[4];
        while (tokenizer.hasMoreTokens()) {
            geo[position++] = Integer.parseInt(tokenizer.nextToken());
        }
        return geo;
    }

    private boolean isValidHexValue(String value) {
        if (value == null || value.length() != 6) {
            return false;
        }
        int i = 0;
        while (i < value.length()) {
            boolean found = false;
            int j = 0;
            while (j < VALID_HEX_CHARS.length) {
                if (value.charAt(i) == VALID_HEX_CHARS[j]) {
                    found = true;
                    break;
                }
                ++j;
            }
            if (!found) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private boolean hasData() {
        return this.fLocation != null && this.fLocation.length() > 0 || this.fCustomizeForegroundColor && this.fForegroundColor != null && this.isValidHexValue(this.fForegroundColor) || this.isDefinedGeometry() || this.isDefinedSplashHandlerType();
    }

    public boolean isDefinedSplashHandlerType() {
        return this.fFieldSplashHandlerType != null && this.fFieldSplashHandlerType.length() > 0;
    }

    public void addProgressBar(boolean add, boolean blockNotification) {
        boolean old = this.fCustomizeProgressBar;
        this.fCustomizeProgressBar = add;
        int[] geo = this.getProgressGeometry();
        if (add) {
            int[] nArray;
            if (geo != null) {
                nArray = geo;
            } else {
                int[] nArray2 = new int[4];
                nArray2[0] = 5;
                nArray2[1] = 275;
                nArray2[2] = 445;
                nArray = nArray2;
                nArray2[3] = 15;
            }
            this.setProgressGeometry(nArray, blockNotification);
        } else if (!blockNotification && this.isEditable()) {
            this.firePropertyChanged("", Boolean.toString(old), Boolean.toString(add));
        }
    }

    public void addProgressMessage(boolean add, boolean blockNotification) {
        boolean mold = this.fCustomizeProgressMessage;
        boolean cold = this.fCustomizeForegroundColor;
        this.fCustomizeProgressMessage = add;
        this.fCustomizeForegroundColor = add;
        int[] geo = this.getMessageGeometry();
        String foreground = this.getForegroundColor();
        if (add) {
            int[] nArray;
            if (geo != null) {
                nArray = geo;
            } else {
                int[] nArray2 = new int[4];
                nArray2[0] = 7;
                nArray2[1] = 252;
                nArray2[2] = 445;
                nArray = nArray2;
                nArray2[3] = 20;
            }
            this.setMessageGeometry(nArray, blockNotification);
            this.setForegroundColor(foreground != null ? foreground : "000000", blockNotification);
        } else if (!blockNotification && this.isEditable()) {
            this.firePropertyChanged("", Boolean.toString(mold || cold), Boolean.toString(add));
        }
    }

    public String getFieldSplashHandlerType() {
        return this.fFieldSplashHandlerType;
    }

    public void setFieldSplashHandlerType(String type, boolean blockNotification) {
        String old = this.fFieldSplashHandlerType;
        this.fFieldSplashHandlerType = type;
        if (!blockNotification && this.isEditable()) {
            this.firePropertyChanged("handlerType", old, this.fFieldSplashHandlerType);
        }
    }

    public boolean isDefinedGeometry() {
        return this.fCustomizeProgressBar && this.fProgressGeometry != null || this.fCustomizeProgressMessage && this.fMessageGeometry != null;
    }
}

