/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.about;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.browser.IWebBrowser;
import org.eclipse.ui.browser.IWorkbenchBrowserSupport;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.about.AboutItem;
import org.eclipse.ui.internal.misc.StatusUtil;

public class AboutUtils {
    private static final String ERROR_LOG_COPY_FILENAME = "log";

    public static AboutItem scan(String s) {
        ArrayList<int[]> linkRanges = new ArrayList<int[]>();
        ArrayList<String> links = new ArrayList<String>();
        int urlSeparatorOffset = s.indexOf("://");
        while (urlSeparatorOffset >= 0) {
            char ch;
            boolean startDoubleQuote = false;
            int urlOffset = urlSeparatorOffset;
            do {
                ch = ' ';
                if (--urlOffset > -1) {
                    ch = s.charAt(urlOffset);
                }
                boolean bl = startDoubleQuote = ch == '\"';
            } while (Character.isUnicodeIdentifierStart(ch));
            ++urlOffset;
            StringTokenizer tokenizer = new StringTokenizer(s.substring(urlSeparatorOffset + 3), " \t\n\r\f<>", false);
            if (!tokenizer.hasMoreTokens()) {
                return null;
            }
            int urlLength = tokenizer.nextToken().length() + 3 + urlSeparatorOffset - urlOffset;
            if (startDoubleQuote) {
                int endOffset = -1;
                int nextDoubleQuote = s.indexOf(34, urlOffset);
                int nextWhitespace = s.indexOf(32, urlOffset);
                if (nextDoubleQuote != -1 && nextWhitespace != -1) {
                    endOffset = Math.min(nextDoubleQuote, nextWhitespace);
                } else if (nextDoubleQuote != -1) {
                    endOffset = nextDoubleQuote;
                } else if (nextWhitespace != -1) {
                    endOffset = nextWhitespace;
                }
                if (endOffset != -1) {
                    urlLength = endOffset - urlOffset;
                }
            }
            linkRanges.add(new int[]{urlOffset, urlLength});
            links.add(s.substring(urlOffset, urlOffset + urlLength));
            urlSeparatorOffset = s.indexOf("://", urlOffset + urlLength + 1);
        }
        return new AboutItem(s, (int[][])linkRanges.toArray((T[])new int[linkRanges.size()][2]), links.toArray(new String[links.size()]));
    }

    public static boolean openBrowser(Shell shell, URL url) {
        if (url != null) {
            try {
                url = Platform.asLocalURL((URL)url);
            }
            catch (IOException iOException) {
                return false;
            }
        }
        if (url == null) {
            return false;
        }
        AboutUtils.openLink(shell, url.toString());
        return true;
    }

    public static void openLink(Shell shell, String href) {
        if (href.startsWith("file:")) {
            href = href.substring(5);
            while (href.startsWith("/")) {
                href = href.substring(1);
            }
            href = "file:///" + href;
        }
        IWorkbenchBrowserSupport support = PlatformUI.getWorkbench().getBrowserSupport();
        try {
            IWebBrowser browser = support.getExternalBrowser();
            browser.openURL(new URL(AboutUtils.urlEncodeForSpaces(href.toCharArray())));
        }
        catch (MalformedURLException e) {
            AboutUtils.openWebBrowserError(shell, href, e);
        }
        catch (PartInitException e) {
            AboutUtils.openWebBrowserError(shell, href, (Throwable)((Object)e));
        }
    }

    private static String urlEncodeForSpaces(char[] input) {
        StringBuffer retu = new StringBuffer(input.length);
        int i = 0;
        while (i < input.length) {
            if (input[i] == ' ') {
                retu.append("%20");
            } else {
                retu.append(input[i]);
            }
            ++i;
        }
        return retu.toString();
    }

    private static void openWebBrowserError(Shell shell, String href, Throwable t) {
        String title = WorkbenchMessages.ProductInfoDialog_errorTitle;
        String msg = NLS.bind((String)WorkbenchMessages.ProductInfoDialog_unableToOpenWebBrowser, (Object)href);
        IStatus status = WorkbenchPlugin.getStatus(t);
        StatusUtil.handleStatus(status, String.valueOf(title) + ": " + msg, 2, shell);
    }

    public static void openErrorLogBrowser(Shell shell) {
        String filename = Platform.getLogFileLocation().toOSString();
        File log = new File(filename);
        if (log.exists()) {
            File logCopy = AboutUtils.makeDisplayCopy(log);
            if (logCopy != null) {
                AboutUtils.openLink(shell, "file:///" + logCopy.getAbsolutePath());
                return;
            }
            AboutUtils.openLink(shell, "file:///" + filename);
            return;
        }
        MessageDialog.openInformation((Shell)shell, (String)WorkbenchMessages.AboutSystemDialog_noLogTitle, (String)NLS.bind((String)WorkbenchMessages.AboutSystemDialog_noLogMessage, (Object)filename));
    }

    private static File makeDisplayCopy(File file) {
        IPath path = WorkbenchPlugin.getDefault().getDataLocation();
        if (path == null) {
            return null;
        }
        path = path.append(ERROR_LOG_COPY_FILENAME);
        File copy = path.toFile();
        FileReader in = null;
        OutputStreamWriter out = null;
        try {
            int count;
            in = new FileReader(file);
            out = new FileWriter(copy);
            char[] buffer = new char[4096];
            while ((count = in.read(buffer, 0, buffer.length)) > 0) {
                out.write(buffer, 0, count);
            }
        }
        catch (FileNotFoundException fileNotFoundException) {
            try {
                if (in != null) {
                    in.close();
                }
                if (out != null) {
                    out.close();
                }
            }
            catch (IOException iOException) {
                return null;
            }
            return null;
        }
        catch (IOException iOException) {
            try {}
            catch (Throwable throwable) {
                try {
                    if (in != null) {
                        in.close();
                    }
                    if (out != null) {
                        out.close();
                    }
                }
                catch (IOException iOException2) {
                    return null;
                }
                throw throwable;
            }
            try {
                if (in != null) {
                    in.close();
                }
                if (out != null) {
                    out.close();
                }
            }
            catch (IOException iOException3) {
                return null;
            }
            return null;
        }
        try {
            if (in != null) {
                in.close();
            }
            if (out != null) {
                out.close();
            }
        }
        catch (IOException iOException) {
            return null;
        }
        return copy;
    }
}

