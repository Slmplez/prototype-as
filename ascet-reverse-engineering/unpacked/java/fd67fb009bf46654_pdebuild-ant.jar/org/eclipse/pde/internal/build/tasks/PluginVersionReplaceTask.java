/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;

public class PluginVersionReplaceTask
extends Task {
    private static final String PLUGIN_START_TAG = "<plugin";
    private static final String FRAGMENT_START_TAG = "<fragment";
    private static final String COMMENT_START_TAG = "<!--";
    private static final String COMMENT_END_TAG = "-->";
    private static final String VERSION = "version";
    private static final String BACKSLASH = "\"";
    private String pluginFilePath;
    private boolean plugin = true;
    private String newVersion;

    public void setPluginFilePath(String path) {
        this.pluginFilePath = path;
    }

    public void setVersionNumber(String qualifier) {
        this.newVersion = qualifier;
    }

    public void setInput(String input) {
        if (input.equalsIgnoreCase("fragment.xml")) {
            this.plugin = false;
        }
    }

    public void execute() {
        StringBuffer buffer = null;
        try {
            buffer = this.readFile(new File(this.pluginFilePath));
        }
        catch (IOException e) {
            throw new BuildException((Throwable)e);
        }
        int startPlugin = this.scan(buffer, 0, this.plugin ? PLUGIN_START_TAG : FRAGMENT_START_TAG);
        int startComment = this.scan(buffer, 0, COMMENT_START_TAG);
        int endComment = startComment > -1 ? this.scan(buffer, startComment, COMMENT_END_TAG) : -1;
        while (startComment != -1 && startPlugin > startComment && startPlugin < endComment) {
            startPlugin = this.scan(buffer, endComment, this.plugin ? PLUGIN_START_TAG : FRAGMENT_START_TAG);
            startComment = this.scan(buffer, endComment, COMMENT_START_TAG);
            int n = endComment = startComment > -1 ? this.scan(buffer, startComment, COMMENT_END_TAG) : -1;
        }
        if (startPlugin == -1) {
            return;
        }
        int endPlugin = this.scan(buffer, startPlugin + 1, ">");
        boolean versionFound = false;
        while (!versionFound) {
            int versionAttr = this.scan(buffer, startPlugin, VERSION);
            if (versionAttr == -1 || versionAttr > endPlugin) {
                return;
            }
            if (!Character.isWhitespace(buffer.charAt(versionAttr - 1))) {
                startPlugin = versionAttr + VERSION.length();
                continue;
            }
            int endVersionWord = versionAttr + VERSION.length();
            while (Character.isWhitespace(buffer.charAt(endVersionWord)) && endVersionWord < endPlugin) {
                ++endVersionWord;
            }
            if (endVersionWord > endPlugin) {
                return;
            }
            if (buffer.charAt(endVersionWord) != '=') {
                startPlugin = endVersionWord;
                continue;
            }
            int startVersionId = this.scan(buffer, versionAttr + 1, BACKSLASH);
            int endVersionId = this.scan(buffer, startVersionId + 1, BACKSLASH);
            buffer.replace(startVersionId + 1, endVersionId, this.newVersion);
            versionFound = true;
        }
        try {
            OutputStreamWriter w = new OutputStreamWriter((OutputStream)new BufferedOutputStream(new FileOutputStream(this.pluginFilePath)), "UTF-8");
            w.write(buffer.toString());
            w.close();
        }
        catch (FileNotFoundException fileNotFoundException) {
        }
        catch (IOException e) {
            throw new BuildException((Throwable)e);
        }
    }

    private int scan(StringBuffer buf, int start, String targetName) {
        return this.scan(buf, start, new String[]{targetName});
    }

    private int scan(StringBuffer buf, int start, String[] targets) {
        int i = start;
        while (i < buf.length()) {
            int j = 0;
            while (j < targets.length) {
                String match;
                if (i < buf.length() - targets[j].length() && targets[j].equalsIgnoreCase(match = buf.substring(i, i + targets[j].length()))) {
                    return i;
                }
                ++j;
            }
            ++i;
        }
        return -1;
    }

    private StringBuffer readFile(File targetName) throws IOException {
        InputStreamReader reader = new InputStreamReader((InputStream)new BufferedInputStream(new FileInputStream(targetName)), "UTF-8");
        StringBuffer result = new StringBuffer();
        char[] buf = new char[4096];
        try {
            int count = reader.read(buf, 0, buf.length);
            while (count != -1) {
                result.append(buf, 0, count);
                count = reader.read(buf, 0, buf.length);
            }
        }
        catch (Throwable throwable) {
            try {
                reader.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            reader.close();
        }
        catch (IOException iOException) {}
        return result;
    }
}

