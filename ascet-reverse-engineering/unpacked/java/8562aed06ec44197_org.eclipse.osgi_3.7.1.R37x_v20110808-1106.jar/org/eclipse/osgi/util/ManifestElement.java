/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ManifestElement {
    private final String mainValue;
    private final String[] valueComponents;
    private Hashtable<String, Object> attributes;
    private Hashtable<String, Object> directives;

    private ManifestElement(String value, String[] valueComponents) {
        this.mainValue = value;
        this.valueComponents = valueComponents;
    }

    public String getValue() {
        return this.mainValue;
    }

    public String[] getValueComponents() {
        return this.valueComponents;
    }

    public String getAttribute(String key) {
        return this.getTableValue(this.attributes, key);
    }

    public String[] getAttributes(String key) {
        return this.getTableValues(this.attributes, key);
    }

    public Enumeration<String> getKeys() {
        return this.getTableKeys(this.attributes);
    }

    private void addAttribute(String key, String value) {
        this.attributes = this.addTableValue(this.attributes, key, value);
    }

    public String getDirective(String key) {
        return this.getTableValue(this.directives, key);
    }

    public String[] getDirectives(String key) {
        return this.getTableValues(this.directives, key);
    }

    public Enumeration<String> getDirectiveKeys() {
        return this.getTableKeys(this.directives);
    }

    private void addDirective(String key, String value) {
        this.directives = this.addTableValue(this.directives, key, value);
    }

    private String getTableValue(Hashtable<String, Object> table, String key) {
        if (table == null) {
            return null;
        }
        Object result = table.get(key);
        if (result == null) {
            return null;
        }
        if (result instanceof String) {
            return (String)result;
        }
        List valueList = (List)result;
        return (String)valueList.get(valueList.size() - 1);
    }

    private String[] getTableValues(Hashtable<String, Object> table, String key) {
        if (table == null) {
            return null;
        }
        Object result = table.get(key);
        if (result == null) {
            return null;
        }
        if (result instanceof String) {
            return new String[]{(String)result};
        }
        List valueList = (List)result;
        return valueList.toArray(new String[valueList.size()]);
    }

    private Enumeration<String> getTableKeys(Hashtable<String, Object> table) {
        if (table == null) {
            return null;
        }
        return table.keys();
    }

    private Hashtable<String, Object> addTableValue(Hashtable<String, Object> table, String key, String value) {
        Object curValue;
        if (table == null) {
            table = new Hashtable(7);
        }
        if ((curValue = table.get(key)) != null) {
            ArrayList<String> newList;
            if (curValue instanceof List) {
                newList = (ArrayList<String>)curValue;
            } else {
                newList = new ArrayList<String>(5);
                newList.add((String)curValue);
            }
            newList.add(value);
            table.put(key, newList);
        } else {
            table.put(key, value);
        }
        return table;
    }

    /*
     * Exception decompiling
     */
    public static ManifestElement[] parseHeader(String header, String value) throws BundleException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: CONTINUE without a while class org.benf.cfr.reader.bytecode.analysis.parse.statement.AssignmentSimple
         *     at org.benf.cfr.reader.bytecode.analysis.parse.statement.GotoStatement.getTargetStartBlock(GotoStatement.java:102)
         *     at org.benf.cfr.reader.bytecode.analysis.parse.statement.IfStatement.getStructuredStatement(IfStatement.java:110)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.getStructuredStatementPlaceHolder(Op03SimpleStatement.java:550)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:727)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public static String[] getArrayFromList(String stringList) {
        String[] result = ManifestElement.getArrayFromList(stringList, ",");
        return result.length == 0 ? null : result;
    }

    public static String[] getArrayFromList(String stringList, String separator) {
        if (stringList == null || stringList.trim().length() == 0) {
            return new String[0];
        }
        ArrayList<String> list = new ArrayList<String>();
        StringTokenizer tokens = new StringTokenizer(stringList, separator);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.length() == 0) continue;
            list.add(token);
        }
        return list.toArray(new String[list.size()]);
    }

    public static Map<String, String> parseBundleManifest(InputStream manifest, Map<String, String> headers) throws IOException, BundleException {
        BufferedReader br;
        if (headers == null) {
            headers = new HashMap<String, String>();
        }
        try {
            br = new BufferedReader(new InputStreamReader(manifest, "UTF8"));
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            br = new BufferedReader(new InputStreamReader(manifest));
        }
        try {
            String header = null;
            StringBuffer value = new StringBuffer(256);
            boolean firstLine = true;
            while (true) {
                int colon;
                String line;
                if ((line = br.readLine()) == null || line.length() == 0) {
                    if (!firstLine) {
                        headers.put(header, value.toString().trim());
                    }
                    break;
                }
                if (line.charAt(0) == ' ') {
                    if (firstLine) {
                        throw new BundleException(NLS.bind(Msg.MANIFEST_INVALID_SPACE, line), 3);
                    }
                    value.append(line.substring(1));
                    continue;
                }
                if (!firstLine) {
                    headers.put(header, value.toString().trim());
                    value.setLength(0);
                }
                if ((colon = line.indexOf(58)) == -1) {
                    throw new BundleException(NLS.bind(Msg.MANIFEST_INVALID_LINE_NOCOLON, line), 3);
                }
                header = line.substring(0, colon).trim();
                value.append(line.substring(colon + 1));
                firstLine = false;
            }
        }
        catch (Throwable throwable) {
            try {
                br.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            br.close();
        }
        catch (IOException iOException) {}
        return headers;
    }

    public String toString() {
        String key;
        Enumeration<String> attrKeys = this.getKeys();
        Enumeration<String> directiveKeys = this.getDirectiveKeys();
        if (attrKeys == null && directiveKeys == null) {
            return this.mainValue;
        }
        StringBuffer result = new StringBuffer(this.mainValue);
        if (attrKeys != null) {
            while (attrKeys.hasMoreElements()) {
                key = attrKeys.nextElement();
                this.addValues(false, key, this.getAttributes(key), result);
            }
        }
        if (directiveKeys != null) {
            while (directiveKeys.hasMoreElements()) {
                key = directiveKeys.nextElement();
                this.addValues(true, key, this.getDirectives(key), result);
            }
        }
        return result.toString();
    }

    private void addValues(boolean directive, String key, String[] values, StringBuffer result) {
        if (values == null) {
            return;
        }
        int i = 0;
        while (i < values.length) {
            result.append(';').append(key);
            if (directive) {
                result.append(':');
            }
            result.append("=\"").append(values[i]).append('\"');
            ++i;
        }
    }
}

