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
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.pde.internal.build.tasks.Version;

public class IdReplaceTask
extends Task {
    private static final String UTF_8 = "UTF-8";
    private static final String FEATURE_START_TAG = "<feature";
    private static final String PRODUCT_START_TAG = "<product";
    private static final String ID = "id";
    private static final String VERSION = "version";
    private static final String COMMA = ",";
    private static final String BACKSLASH = "\"";
    private static final String EMPTY = "";
    private static final String PLUGIN_START_TAG = "<plugin";
    private static final String INCLUDES_START_TAG = "<includes";
    private static final String COMMENT_START_TAG = "<!--";
    private static final String COMMENT_END_TAG = "-->";
    private static final String INSERT_VERSION = " version=\"0.0.0\" ";
    private String filePath;
    private boolean isProduct = false;
    private Map pluginIds = new HashMap(10);
    private Map featureIds = new HashMap(4);
    private String selfVersion;
    private boolean contentChanged = false;
    private static final String GENERIC_VERSION_NUMBER = "0.0.0";
    private static final String QUALIFIER = "qualifier";

    public void setFeatureFilePath(String path) {
        this.filePath = path;
    }

    public void setProductFilePath(String path) {
        this.filePath = path;
        this.isProduct = true;
    }

    public void setSelfVersion(String version) {
        this.selfVersion = version;
    }

    public void setPluginIds(String values) {
        this.pluginIds = new HashMap(10);
        StringTokenizer tokens = new StringTokenizer(values, COMMA);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            String id = EMPTY;
            if (!token.equals(EMPTY)) {
                id = token;
            }
            String version = EMPTY;
            token = tokens.nextToken().trim();
            if (!token.equals(EMPTY)) {
                version = token;
            }
            this.pluginIds.put(id, version);
        }
    }

    public void setFeatureIds(String values) {
        this.featureIds = new HashMap(10);
        StringTokenizer tokens = new StringTokenizer(values, COMMA);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            String id = EMPTY;
            if (!token.equals(EMPTY)) {
                id = token;
            }
            String version = EMPTY;
            token = tokens.nextToken().trim();
            if (!token.equals(EMPTY)) {
                version = token;
            }
            this.featureIds.put(id, version);
        }
    }

    public void execute() {
        StringBuffer buffer = null;
        try {
            buffer = this.readFile(new File(this.filePath));
        }
        catch (IOException e) {
            throw new BuildException((Throwable)e);
        }
        String mainStartTag = this.isProduct ? PRODUCT_START_TAG : FEATURE_START_TAG;
        int startComment = this.scan(buffer, 0, COMMENT_START_TAG);
        int endComment = startComment > -1 ? this.scan(buffer, startComment, COMMENT_END_TAG) : -1;
        int startFeature = this.scan(buffer, 0, mainStartTag, true);
        while (startComment != -1 && startFeature > startComment && startFeature < endComment) {
            startFeature = this.scan(buffer, endComment, mainStartTag, true);
            startComment = this.scan(buffer, endComment, COMMENT_START_TAG);
            int n = endComment = startComment > -1 ? this.scan(buffer, startComment, COMMENT_END_TAG) : -1;
        }
        if (startFeature == -1) {
            return;
        }
        int endFeature = this.scan(buffer, startFeature, ">");
        if (this.selfVersion != null) {
            boolean versionFound = false;
            while (!versionFound) {
                int startVersionWord = this.scan(buffer, startFeature, VERSION);
                if (startVersionWord == -1 || startVersionWord > endFeature) {
                    if (!this.isProduct) {
                        return;
                    }
                    if (this.selfVersion == null || this.selfVersion.equals(GENERIC_VERSION_NUMBER)) break;
                    buffer.insert(endFeature, INSERT_VERSION);
                    startVersionWord = endFeature + 1;
                    endFeature += INSERT_VERSION.length();
                }
                if (!Character.isWhitespace(buffer.charAt(startVersionWord - 1))) {
                    startFeature = startVersionWord + VERSION.length();
                    continue;
                }
                int endVersionWord = startVersionWord + VERSION.length();
                while (Character.isWhitespace(buffer.charAt(endVersionWord)) && endVersionWord < endFeature) {
                    ++endVersionWord;
                }
                if (endVersionWord > endFeature) {
                    System.err.println("Could not find the tag 'version' in the feature header, file: " + this.filePath);
                    return;
                }
                if (buffer.charAt(endVersionWord) != '=') {
                    startFeature = endVersionWord;
                    continue;
                }
                int startVersionId = this.scan(buffer, startVersionWord + 1, BACKSLASH);
                int endVersionId = this.scan(buffer, startVersionId + 1, BACKSLASH);
                buffer.replace(startVersionId + 1, endVersionId, this.selfVersion);
                endFeature += this.selfVersion.length() - (endVersionId - startVersionId);
                this.contentChanged = true;
                versionFound = true;
            }
        }
        int startElement = endFeature;
        int startId = 0;
        while (true) {
            int startPlugin = this.scan(buffer, startElement + 1, PLUGIN_START_TAG, true);
            int startInclude = this.scan(buffer, startElement + 1, this.isProduct ? FEATURE_START_TAG : INCLUDES_START_TAG, true);
            if (startPlugin == -1 && startInclude == -1) break;
            startComment = this.scan(buffer, startElement + 1, COMMENT_START_TAG);
            endComment = startComment > -1 ? this.scan(buffer, startComment, COMMENT_END_TAG) : -1;
            int foundElement = -1;
            boolean isPlugin = false;
            if (startPlugin == -1 || startInclude == -1) {
                foundElement = startPlugin != -1 ? startPlugin : startInclude;
                isPlugin = startPlugin != -1;
            } else if (startPlugin < startInclude) {
                foundElement = startPlugin;
                isPlugin = true;
            } else {
                foundElement = startInclude;
                isPlugin = false;
            }
            if (startComment != -1 && foundElement > startComment && foundElement < endComment) {
                startElement = endComment;
                continue;
            }
            int startElementId = -1;
            int endElementId = -1;
            int startVersionWord = -1;
            int startVersionId = -1;
            int endVersionId = -1;
            int endElement = this.scan(buffer, foundElement, ">");
            startId = this.scan(buffer, foundElement, ID);
            if (startId < (startVersionWord = this.scan(buffer, foundElement, VERSION)) || startVersionWord == -1) {
                startElementId = this.scan(buffer, startId + 1, BACKSLASH);
                endElementId = this.scan(buffer, startElementId + 1, BACKSLASH);
                startVersionWord = this.scan(buffer, endElementId + 1, VERSION);
                if (startVersionWord > 0) {
                    startVersionId = this.scan(buffer, startVersionWord + 1, BACKSLASH);
                    endVersionId = this.scan(buffer, startVersionId + 1, BACKSLASH);
                }
            } else if (startVersionWord > 0) {
                startVersionId = this.scan(buffer, startVersionWord + 1, BACKSLASH);
                endVersionId = this.scan(buffer, startVersionId + 1, BACKSLASH);
                startId = this.scan(buffer, endVersionId + 1, ID);
                startElementId = this.scan(buffer, startId + 1, BACKSLASH);
                endElementId = this.scan(buffer, startElementId + 1, BACKSLASH);
            }
            if (startVersionId > endElement) {
                startVersionId = -1;
            }
            if (startId == -1 || !this.isProduct && startVersionId == -1) break;
            String version = null;
            if (startVersionId == -1) {
                buffer.insert(endElement - 1, INSERT_VERSION);
                startVersionId = endElement + 8;
                endVersionId = startVersionId + 6;
                endElement += 13;
                version = GENERIC_VERSION_NUMBER;
            } else {
                version = buffer.substring(startVersionId + 1, endVersionId);
            }
            String elementId = buffer.substring(startElementId + 1, endElementId);
            if (!version.equals(GENERIC_VERSION_NUMBER) && !version.endsWith(QUALIFIER)) {
                startElement = endElement;
                continue;
            }
            ++startVersionId;
            String replacementVersion = null;
            Version v = new Version(version);
            String lookupKey = String.valueOf(elementId) + ':' + v.getMajor() + '.' + v.getMinor() + '.' + v.getMicro();
            replacementVersion = isPlugin ? (String)this.pluginIds.get(lookupKey) : (String)this.featureIds.get(lookupKey);
            int change = 0;
            if (replacementVersion == null) {
                System.err.println("Could not find " + elementId);
            } else {
                buffer.replace(startVersionId, endVersionId, replacementVersion);
                this.contentChanged = true;
                change = endVersionId - startVersionId - replacementVersion.length();
            }
            startElement = endElementId > endVersionId ? endElementId - change : endVersionId - change;
        }
        if (!this.contentChanged) {
            return;
        }
        try {
            OutputStreamWriter w = new OutputStreamWriter((OutputStream)new BufferedOutputStream(new FileOutputStream(this.filePath)), UTF_8);
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
        return this.scan(buf, start, new String[]{targetName}, false);
    }

    private int scan(StringBuffer buf, int start, String targetName, boolean wholeWord) {
        return this.scan(buf, start, new String[]{targetName}, wholeWord);
    }

    private int scan(StringBuffer buf, int start, String[] targets, boolean wholeWord) {
        int i = start;
        while (i < buf.length()) {
            int j = 0;
            while (j < targets.length) {
                String match;
                String candidate;
                if (i < buf.length() - targets[j].length() && (candidate = targets[j]).equalsIgnoreCase(match = buf.substring(i, i + candidate.length())) && (!wholeWord || Character.isWhitespace(buf.charAt(i + candidate.length())))) {
                    return i;
                }
                ++j;
            }
            ++i;
        }
        return -1;
    }

    private StringBuffer readFile(File targetName) throws IOException {
        InputStreamReader reader = new InputStreamReader((InputStream)new BufferedInputStream(new FileInputStream(targetName)), UTF_8);
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

