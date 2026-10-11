/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 */
package org.eclipse.equinox.internal.p2.artifact.repository.simple;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Dictionary;
import java.util.Hashtable;
import org.eclipse.core.runtime.URIUtil;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;

public class Mapper {
    private Filter[] filters = new Filter[0];
    private String[] outputStrings = new String[0];
    private static final String REPOURL = "repoUrl";
    private static final String CLASSIFIER = "classifier";
    private static final String FORMAT = "format";
    private static final String ID = "id";
    private static final String VERSION = "version";

    public void initialize(BundleContext ctx, String[][] mappingRules) {
        this.filters = new Filter[mappingRules.length];
        this.outputStrings = new String[mappingRules.length];
        int i = 0;
        while (i < mappingRules.length) {
            try {
                this.filters[i] = ctx.createFilter(mappingRules[i][0]);
                this.outputStrings[i] = mappingRules[i][1];
            }
            catch (InvalidSyntaxException e) {
                e.printStackTrace();
            }
            ++i;
        }
    }

    public URI map(URI repositoryLocation, String classifier, String id, String version, String format) {
        String locationString = URIUtil.toUnencodedString((URI)repositoryLocation);
        Hashtable<String, String> values = new Hashtable<String, String>(5);
        if (repositoryLocation != null) {
            ((Dictionary)values).put(REPOURL, locationString);
        }
        if (classifier != null) {
            ((Dictionary)values).put(CLASSIFIER, classifier);
        }
        if (id != null) {
            ((Dictionary)values).put(ID, id);
        }
        if (version != null) {
            ((Dictionary)values).put(VERSION, version);
        }
        if (format != null) {
            ((Dictionary)values).put(FORMAT, format);
        }
        int i = 0;
        while (i < this.filters.length) {
            if (this.filters[i].match(values)) {
                return this.doReplacement(this.outputStrings[i], locationString, classifier, id, version, format);
            }
            ++i;
        }
        return null;
    }

    private URI doReplacement(String pattern, String repoLocation, String classifier, String id, String version, String format) {
        try {
            if (repoLocation.endsWith("/")) {
                repoLocation = repoLocation.substring(0, repoLocation.length() - 1);
            }
            StringBuffer output = new StringBuffer(pattern);
            int index = 0;
            while (index < output.length()) {
                int beginning = output.indexOf("${", index);
                if (beginning == -1) {
                    return URIUtil.fromString((String)output.toString());
                }
                int end = output.indexOf("}", beginning);
                if (end == -1) {
                    return URIUtil.fromString((String)pattern);
                }
                String varName = output.substring(beginning + 2, end);
                String varValue = null;
                if (varName.equalsIgnoreCase(CLASSIFIER)) {
                    varValue = classifier;
                } else if (varName.equalsIgnoreCase(ID)) {
                    varValue = id;
                } else if (varName.equalsIgnoreCase(VERSION)) {
                    varValue = version;
                } else if (varName.equalsIgnoreCase(REPOURL)) {
                    varValue = repoLocation;
                } else if (varName.equalsIgnoreCase(FORMAT)) {
                    varValue = format;
                }
                if (varValue == null) {
                    varValue = "";
                }
                output.replace(beginning, end + 1, varValue);
                index = beginning + varValue.length();
            }
            return URIUtil.fromString((String)output.toString());
        }
        catch (URISyntaxException uRISyntaxException) {
            return null;
        }
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        int i = 0;
        while (i < this.filters.length) {
            result.append(this.filters[i]).append('-').append('>').append(this.outputStrings[i]).append('\n');
            ++i;
        }
        return result.toString();
    }

    public String[][] serialize() {
        String[][] result = new String[this.filters.length][2];
        int i = 0;
        while (i < this.filters.length) {
            result[i][0] = this.filters[i].toString();
            result[i][1] = this.outputStrings[i];
            ++i;
        }
        return result;
    }
}

