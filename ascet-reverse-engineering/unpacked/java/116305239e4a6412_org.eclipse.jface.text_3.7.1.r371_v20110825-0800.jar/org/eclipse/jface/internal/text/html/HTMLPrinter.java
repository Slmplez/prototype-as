/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Util
 *  org.eclipse.swt.SWTError
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.jface.internal.text.html;

import java.io.IOException;
import java.io.Reader;
import java.net.URL;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class HTMLPrinter {
    private static RGB BG_COLOR_RGB;
    private static RGB FG_COLOR_RGB;
    private static final String UNIT;

    static {
        block3: {
            BG_COLOR_RGB = new RGB(255, 255, 225);
            FG_COLOR_RGB = new RGB(0, 0, 0);
            UNIT = Util.isMac() ? "px" : "pt";
            final Display display = Display.getDefault();
            if (display != null && !display.isDisposed()) {
                try {
                    display.asyncExec(new Runnable(){

                        public void run() {
                            HTMLPrinter.cacheColors(display);
                            HTMLPrinter.installColorUpdater(display);
                        }
                    });
                }
                catch (SWTError err) {
                    if (err.code == 45) break block3;
                    throw err;
                }
            }
        }
    }

    private HTMLPrinter() {
    }

    private static void cacheColors(Display display) {
        BG_COLOR_RGB = display.getSystemColor(29).getRGB();
        FG_COLOR_RGB = display.getSystemColor(28).getRGB();
    }

    private static void installColorUpdater(final Display display) {
        display.addListener(39, new Listener(){

            public void handleEvent(Event event) {
                HTMLPrinter.cacheColors(display);
            }
        });
    }

    private static String replace(String text, char c, String s) {
        int previous = 0;
        int current = text.indexOf(c, previous);
        if (current == -1) {
            return text;
        }
        StringBuffer buffer = new StringBuffer();
        while (current > -1) {
            buffer.append(text.substring(previous, current));
            buffer.append(s);
            previous = current + 1;
            current = text.indexOf(c, previous);
        }
        buffer.append(text.substring(previous));
        return buffer.toString();
    }

    public static String convertToHTMLContent(String content) {
        content = HTMLPrinter.replace(content, '&', "&amp;");
        content = HTMLPrinter.replace(content, '\"', "&quot;");
        content = HTMLPrinter.replace(content, '<', "&lt;");
        return HTMLPrinter.replace(content, '>', "&gt;");
    }

    public static String convertToHTMLContentWithWhitespace(String content) {
        content = HTMLPrinter.replace(content, '&', "&amp;");
        content = HTMLPrinter.replace(content, '\"', "&quot;");
        content = HTMLPrinter.replace(content, '<', "&lt;");
        content = HTMLPrinter.replace(content, '>', "&gt;");
        return "<span style='white-space:pre'>" + content + "</span>";
    }

    public static String read(Reader rd) {
        StringBuffer buffer = new StringBuffer();
        char[] readBuffer = new char[2048];
        try {
            int n = rd.read(readBuffer);
            while (n > 0) {
                buffer.append(readBuffer, 0, n);
                n = rd.read(readBuffer);
            }
            return buffer.toString();
        }
        catch (IOException iOException) {
            return null;
        }
    }

    public static void insertPageProlog(StringBuffer buffer, int position, RGB fgRGB, RGB bgRGB, String styleSheet) {
        if (fgRGB == null) {
            fgRGB = FG_COLOR_RGB;
        }
        if (bgRGB == null) {
            bgRGB = BG_COLOR_RGB;
        }
        StringBuffer pageProlog = new StringBuffer(300);
        pageProlog.append("<html>");
        HTMLPrinter.appendStyleSheet(pageProlog, styleSheet);
        HTMLPrinter.appendColors(pageProlog, fgRGB, bgRGB);
        buffer.insert(position, pageProlog.toString());
    }

    private static void appendColors(StringBuffer pageProlog, RGB fgRGB, RGB bgRGB) {
        pageProlog.append("<body text=\"");
        HTMLPrinter.appendColor(pageProlog, fgRGB);
        pageProlog.append("\" bgcolor=\"");
        HTMLPrinter.appendColor(pageProlog, bgRGB);
        pageProlog.append("\">");
    }

    private static void appendColor(StringBuffer buffer, RGB rgb) {
        buffer.append('#');
        HTMLPrinter.appendAsHexString(buffer, rgb.red);
        HTMLPrinter.appendAsHexString(buffer, rgb.green);
        HTMLPrinter.appendAsHexString(buffer, rgb.blue);
    }

    private static void appendAsHexString(StringBuffer buffer, int intValue) {
        String hexValue = Integer.toHexString(intValue);
        if (hexValue.length() == 1) {
            buffer.append('0');
        }
        buffer.append(hexValue);
    }

    public static void insertStyles(StringBuffer buffer, String[] styles) {
        if (styles == null || styles.length == 0) {
            return;
        }
        StringBuffer styleBuf = new StringBuffer(10 * styles.length);
        int i = 0;
        while (i < styles.length) {
            styleBuf.append(" style=\"");
            styleBuf.append(styles[i]);
            styleBuf.append('\"');
            ++i;
        }
        int index = buffer.indexOf("<body ");
        if (index != -1) {
            buffer.insert(index + 5, (Object)styleBuf);
            return;
        }
        index = buffer.indexOf("<body>");
        if (index != -1) {
            buffer.insert(index + 5, ' ');
            buffer.insert(index + 6, (Object)styleBuf);
            return;
        }
    }

    private static void appendStyleSheet(StringBuffer buffer, String styleSheet) {
        if (styleSheet == null) {
            return;
        }
        StringBuffer fg = new StringBuffer();
        HTMLPrinter.appendColor(fg, FG_COLOR_RGB);
        styleSheet = styleSheet.replaceAll("InfoText", fg.toString());
        StringBuffer bg = new StringBuffer();
        HTMLPrinter.appendColor(bg, BG_COLOR_RGB);
        styleSheet = styleSheet.replaceAll("InfoBackground", bg.toString());
        buffer.append("<head><style CHARSET=\"ISO-8859-1\" TYPE=\"text/css\">");
        buffer.append(styleSheet);
        buffer.append("</style></head>");
    }

    private static void appendStyleSheetURL(StringBuffer buffer, URL styleSheetURL) {
        if (styleSheetURL == null) {
            return;
        }
        buffer.append("<head>");
        buffer.append("<LINK REL=\"stylesheet\" HREF= \"");
        buffer.append(styleSheetURL);
        buffer.append("\" CHARSET=\"ISO-8859-1\" TYPE=\"text/css\">");
        buffer.append("</head>");
    }

    public static void insertPageProlog(StringBuffer buffer, int position) {
        StringBuffer pageProlog = new StringBuffer(60);
        pageProlog.append("<html>");
        HTMLPrinter.appendColors(pageProlog, FG_COLOR_RGB, BG_COLOR_RGB);
        buffer.insert(position, pageProlog.toString());
    }

    public static void insertPageProlog(StringBuffer buffer, int position, URL styleSheetURL) {
        StringBuffer pageProlog = new StringBuffer(300);
        pageProlog.append("<html>");
        HTMLPrinter.appendStyleSheetURL(pageProlog, styleSheetURL);
        HTMLPrinter.appendColors(pageProlog, FG_COLOR_RGB, BG_COLOR_RGB);
        buffer.insert(position, pageProlog.toString());
    }

    public static void insertPageProlog(StringBuffer buffer, int position, String styleSheet) {
        HTMLPrinter.insertPageProlog(buffer, position, null, null, styleSheet);
    }

    public static void addPageProlog(StringBuffer buffer) {
        HTMLPrinter.insertPageProlog(buffer, buffer.length());
    }

    public static void addPageEpilog(StringBuffer buffer) {
        buffer.append("</body></html>");
    }

    public static void startBulletList(StringBuffer buffer) {
        buffer.append("<ul>");
    }

    public static void endBulletList(StringBuffer buffer) {
        buffer.append("</ul>");
    }

    public static void addBullet(StringBuffer buffer, String bullet) {
        if (bullet != null) {
            buffer.append("<li>");
            buffer.append(bullet);
            buffer.append("</li>");
        }
    }

    public static void addSmallHeader(StringBuffer buffer, String header) {
        if (header != null) {
            buffer.append("<h5>");
            buffer.append(header);
            buffer.append("</h5>");
        }
    }

    public static void addParagraph(StringBuffer buffer, String paragraph) {
        if (paragraph != null) {
            buffer.append("<p>");
            buffer.append(paragraph);
        }
    }

    public static void addPreFormatted(StringBuffer buffer, String preFormatted) {
        if (preFormatted != null) {
            buffer.append("<pre>");
            buffer.append(preFormatted);
            buffer.append("</pre>");
        }
    }

    public static void addParagraph(StringBuffer buffer, Reader paragraphReader) {
        if (paragraphReader != null) {
            HTMLPrinter.addParagraph(buffer, HTMLPrinter.read(paragraphReader));
        }
    }

    public static String convertTopLevelFont(String styles, FontData fontData) {
        boolean bold = (fontData.getStyle() & 1) != 0;
        boolean italic = (fontData.getStyle() & 2) != 0;
        String size = String.valueOf(Integer.toString(fontData.getHeight())) + UNIT;
        String family = "'" + fontData.getName() + "',sans-serif";
        styles = styles.replaceFirst("(html\\s*\\{.*(?:\\s|;)font-size:\\s*)\\d+pt(\\;?.*\\})", "$1" + size + "$2");
        styles = styles.replaceFirst("(html\\s*\\{.*(?:\\s|;)font-weight:\\s*)\\w+(\\;?.*\\})", "$1" + (bold ? "bold" : "normal") + "$2");
        styles = styles.replaceFirst("(html\\s*\\{.*(?:\\s|;)font-style:\\s*)\\w+(\\;?.*\\})", "$1" + (italic ? "italic" : "normal") + "$2");
        styles = styles.replaceFirst("(html\\s*\\{.*(?:\\s|;)font-family:\\s*).+?(;.*\\})", "$1" + family + "$2");
        return styles;
    }
}

