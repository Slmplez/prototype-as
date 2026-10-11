/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.apache.tools.ant.types.FileSet
 *  org.apache.tools.ant.types.PatternSet$NameEntry
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Enumeration;
import java.util.Properties;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.apache.tools.ant.types.FileSet;
import org.apache.tools.ant.types.PatternSet;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.tasks.TaskMessages;

public class LicenseReplaceTask
extends Task {
    private String filePath;
    private String licensePath;

    public void setFeatureFilePath(String path) {
        this.filePath = path;
    }

    public void setLicenseFilePath(String path) {
        this.licensePath = path;
    }

    public void execute() {
        Feature payloadFeature = new Feature(this.filePath);
        Feature licenseFeature = new Feature(this.licensePath);
        payloadFeature.replace(licenseFeature.getUrl(), licenseFeature.getLicenseText());
        payloadFeature.write();
        FileSet fileSet = new FileSet();
        fileSet.setProject(this.getProject());
        fileSet.setDir(new File(this.licensePath));
        PatternSet.NameEntry fileInclude = fileSet.createInclude();
        fileInclude.setName("feature*.properties");
        String[] propertyFiles = fileSet.getDirectoryScanner().getIncludedFiles();
        int i = 0;
        while (i < propertyFiles.length) {
            String propertyFile = propertyFiles[i];
            File featurePropertyFile = new File(this.filePath, propertyFile);
            File licensePropertyFile = new File(this.licensePath, propertyFile);
            FileInputStream fis = null;
            if (featurePropertyFile.exists()) {
                try {
                    fis = new FileInputStream(licensePropertyFile);
                    Properties licenseProperties = new Properties();
                    licenseProperties.load(fis);
                    fis.close();
                    fis = new FileInputStream(featurePropertyFile);
                    Properties featureProperties = new Properties();
                    featureProperties.load(fis);
                    fis.close();
                    Enumeration licenseKeys = licenseProperties.keys();
                    while (licenseKeys.hasMoreElements()) {
                        String licenseKey = (String)licenseKeys.nextElement();
                        if (!featureProperties.containsKey(licenseKey)) continue;
                        throw new BuildException(NLS.bind((String)TaskMessages.error_conflictingProperties, (Object[])new String[]{licenseKey, licensePropertyFile.getAbsolutePath(), featurePropertyFile.getAbsolutePath()}));
                    }
                }
                catch (FileNotFoundException fileNotFoundException) {
                }
                catch (IOException e) {
                    throw new BuildException((Throwable)e);
                }
            }
            try {
                FileWriter featurePropertyWriter = new FileWriter(featurePropertyFile, true);
                FileReader licensePropertyReader = new FileReader(licensePropertyFile);
                char[] buffer = new char[1024];
                int bytesRead = licensePropertyReader.read(buffer);
                while (bytesRead > -1) {
                    featurePropertyWriter.write(buffer, 0, bytesRead);
                    bytesRead = licensePropertyReader.read(buffer);
                }
                featurePropertyWriter.close();
                licensePropertyReader.close();
            }
            catch (IOException e) {
                throw new BuildException((Throwable)e);
            }
            ++i;
        }
    }

    private class Feature {
        private static final String UTF_8 = "UTF-8";
        private static final String FEATURE_START_TAG = "<feature";
        private static final String LICENSE_START_TAG = "<license";
        private static final String LICENSE_END_TAG = "</license>";
        private static final String URL_ATTR = "url";
        private static final String DOUBLE_QUOTE = "\"";
        private static final String COMMENT_START_TAG = "<!--";
        private static final String COMMENT_END_TAG = "-->";
        private final String featureFilePath;
        private String urlText;
        private String license;
        private StringBuffer buffer;
        private int startLicenseText = -1;
        private int endLicenseText = -1;
        private int startURLText = -1;
        private int endURLText = -1;
        private int startURLWord = -1;
        private int endURLWord = -1;
        private int insertionPoint = -1;
        private boolean contentChanged;

        public String getUrl() {
            if (this.contentChanged) {
                throw new IllegalStateException(TaskMessages.error_noCallAfterReplace);
            }
            return this.urlText;
        }

        public String getLicenseText() {
            if (this.contentChanged) {
                throw new IllegalStateException(TaskMessages.error_noCallAfterReplace);
            }
            return this.license;
        }

        public void replace(String licenseURL, String licenseText) {
            int end;
            int start;
            if (this.contentChanged) {
                throw new IllegalStateException(TaskMessages.error_noCallAfterReplace);
            }
            if (this.startLicenseText <= 0 || this.endLicenseText <= this.startLicenseText) {
                if (this.insertionPoint > -1) {
                    StringBuffer newLicense = new StringBuffer();
                    newLicense.append('\n');
                    newLicense.append("<license url=");
                    if (licenseURL != null) {
                        newLicense.append(licenseURL);
                    }
                    newLicense.append(" >");
                    newLicense.append(licenseText);
                    newLicense.append(LICENSE_END_TAG);
                    this.buffer.insert(this.insertionPoint, newLicense.toString());
                    this.contentChanged = true;
                    return;
                }
                return;
            }
            this.buffer.replace(this.startLicenseText, this.endLicenseText, licenseText);
            this.contentChanged = true;
            if (this.startURLText == this.endURLText) {
                if (licenseURL != null) {
                    this.buffer.replace(this.startURLText, this.endURLText + 1, " url=" + licenseURL + ">");
                }
            } else if (licenseURL == null) {
                this.buffer.replace(this.startURLWord, this.endURLText + 1, "");
            } else {
                this.buffer.replace(this.startURLText, this.endURLText + 1, licenseURL);
            }
            if ((start = this.buffer.indexOf("license-feature=")) != -1 && (end = this.buffer.indexOf(DOUBLE_QUOTE, start)) < this.buffer.length() && (end = this.buffer.indexOf(DOUBLE_QUOTE, end + 1)) != -1) {
                this.buffer.replace(start, end + 1, "");
            }
            if ((start = this.buffer.indexOf("license-feature-version=")) != -1 && (end = this.buffer.indexOf(DOUBLE_QUOTE, start)) < this.buffer.length() && (end = this.buffer.indexOf(DOUBLE_QUOTE, end + 1)) != -1) {
                this.buffer.replace(start, end + 1, "");
            }
        }

        public void write() {
            if (!this.contentChanged) {
                return;
            }
            try {
                OutputStreamWriter w = new OutputStreamWriter((OutputStream)new BufferedOutputStream(new FileOutputStream(this.featureFilePath)), UTF_8);
                w.write(this.buffer.toString());
                w.close();
            }
            catch (FileNotFoundException fileNotFoundException) {
            }
            catch (IOException e) {
                throw new BuildException((Throwable)e);
            }
        }

        Feature(String featureFilePath) {
            this.featureFilePath = String.valueOf(featureFilePath) + '/' + "feature.xml";
            this.parse();
        }

        private void parse() {
            this.buffer = null;
            try {
                this.buffer = this.readFile(new File(this.featureFilePath));
            }
            catch (IOException e) {
                throw new BuildException((Throwable)e);
            }
            int startFeature = this.scanNoComment(this.buffer, 0, FEATURE_START_TAG, true);
            if (startFeature == -1) {
                return;
            }
            int endFeature = this.scan(this.buffer, startFeature, ">");
            this.insertionPoint = endFeature + 1;
            int startLicense = this.scanNoComment(this.buffer, 0, LICENSE_START_TAG, false);
            if (startLicense == -1) {
                return;
            }
            int endLicense = this.scan(this.buffer, startLicense, ">");
            boolean urlFound = false;
            while (!urlFound) {
                this.startURLWord = this.scan(this.buffer, startLicense, URL_ATTR);
                if (this.startURLWord == -1 || this.startURLWord > endLicense) {
                    this.endURLText = this.startURLText = startLicense + LICENSE_START_TAG.length();
                } else {
                    if (!Character.isWhitespace(this.buffer.charAt(this.startURLWord - 1))) {
                        startLicense = this.startURLWord + URL_ATTR.length();
                        continue;
                    }
                    this.endURLWord = this.startURLWord + URL_ATTR.length();
                    while (Character.isWhitespace(this.buffer.charAt(this.endURLWord)) && this.endURLWord < endLicense) {
                        ++this.endURLWord;
                    }
                    if (this.endURLWord > endLicense) {
                        System.err.println("Could not find the tag 'id' in the license header, file: " + this.featureFilePath);
                        return;
                    }
                    if (this.buffer.charAt(this.endURLWord) != '=') {
                        startLicense = this.endURLWord;
                        continue;
                    }
                    this.startURLText = this.scan(this.buffer, this.startURLWord + 1, DOUBLE_QUOTE);
                    this.endURLText = this.scan(this.buffer, this.startURLText + 1, DOUBLE_QUOTE);
                    this.urlText = this.buffer.substring(this.startURLText, this.endURLText + 1);
                }
                urlFound = true;
            }
            this.startLicenseText = this.scan(this.buffer, this.endURLText, ">") + 1;
            this.endLicenseText = this.scan(this.buffer, this.startLicenseText, LICENSE_END_TAG, true) - 1;
            this.license = this.buffer.substring(this.startLicenseText, this.endLicenseText);
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

        private int scanNoComment(StringBuffer bug, int start, String target, boolean wholeWord) {
            int startComment = this.scan(this.buffer, start, COMMENT_START_TAG);
            int endComment = startComment > -1 ? this.scan(this.buffer, startComment, COMMENT_END_TAG) : -1;
            int startTarget = this.scan(this.buffer, start, target, wholeWord);
            while (startComment != -1 && startTarget > startComment && startTarget < endComment) {
                startTarget = this.scan(this.buffer, endComment, target, wholeWord);
                startComment = this.scan(this.buffer, endComment, COMMENT_START_TAG);
                int n = endComment = startComment > -1 ? this.scan(this.buffer, startComment, COMMENT_END_TAG) : -1;
            }
            return startTarget;
        }
    }
}

