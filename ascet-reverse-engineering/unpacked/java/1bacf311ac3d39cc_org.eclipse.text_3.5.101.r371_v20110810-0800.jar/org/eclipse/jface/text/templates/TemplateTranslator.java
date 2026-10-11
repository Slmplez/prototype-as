/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.templates;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jface.text.templates.Template;
import org.eclipse.jface.text.templates.TemplateBuffer;
import org.eclipse.jface.text.templates.TemplateException;
import org.eclipse.jface.text.templates.TemplateVariable;
import org.eclipse.jface.text.templates.TemplateVariableType;
import org.eclipse.jface.text.templates.TextTemplateMessages;

public class TemplateTranslator {
    private static final String IDENTIFIER = "(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++)";
    private static final String QUALIFIED_NAME = "(?:(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++)\\.)*+(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++)";
    private static final String ARGUMENT_TEXT = "'(?:(?:'')|(?:[^']))*+'";
    private static final String ARGUMENT = "(?:(?:(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++)\\.)*+(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++))|(?:'(?:(?:'')|(?:[^']))*+')";
    private static final String SPACES = "\\s*+";
    private static final Pattern PARAM_PATTERN = Pattern.compile("(?:(?:(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++)\\.)*+(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++))|(?:'(?:(?:'')|(?:[^']))*+')");
    private static final Pattern ESCAPE_PATTERN = Pattern.compile("\\$\\$|\\$\\{\\s*+((?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++)?+)\\s*+(?::\\s*+((?:(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++)\\.)*+(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++))\\s*+(?:\\(\\s*+((?:(?:(?:(?:(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++)\\.)*+(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++))|(?:'(?:(?:'')|(?:[^']))*+'))\\s*+,\\s*+)*+(?:(?:(?:(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++)\\.)*+(?:[\\p{javaJavaIdentifierPart}&&[^\\$]]++))|(?:'(?:(?:'')|(?:[^']))*+')))\\s*+\\))?\\s*+)?\\}|\\$");
    private String fErrorMessage;
    private TemplateVariableType fCurrentType;

    public String getErrorMessage() {
        return this.fErrorMessage;
    }

    public TemplateBuffer translate(Template template) throws TemplateException {
        return this.parse(template.getPattern());
    }

    public TemplateBuffer translate(String string) throws TemplateException {
        return this.parse(string);
    }

    private TemplateBuffer parse(String string) throws TemplateException {
        this.fErrorMessage = null;
        StringBuffer buffer = new StringBuffer(string.length());
        Matcher matcher = ESCAPE_PATTERN.matcher(string);
        LinkedHashMap variables = new LinkedHashMap();
        int complete = 0;
        while (matcher.find()) {
            buffer.append(string.substring(complete, matcher.start()));
            if ("$".equals(matcher.group())) {
                this.fail(TextTemplateMessages.getString("TemplateTranslator.error.incomplete.variable"));
            } else if ("$$".equals(matcher.group())) {
                buffer.append('$');
            } else {
                String name = matcher.group(1);
                String typeName = matcher.group(2);
                String params = matcher.group(3);
                TemplateVariableType type = this.createType(typeName, params);
                this.updateOrCreateVariable(variables, name, type, buffer.length());
                buffer.append(name);
            }
            complete = matcher.end();
        }
        buffer.append(string.substring(complete));
        TemplateVariable[] vars = this.createVariables(variables);
        return new TemplateBuffer(buffer.toString(), vars);
    }

    private TemplateVariableType createType(String typeName, String paramString) {
        if (typeName == null) {
            return null;
        }
        if (paramString == null) {
            return new TemplateVariableType(typeName);
        }
        Matcher matcher = PARAM_PATTERN.matcher(paramString);
        ArrayList<String> params = new ArrayList<String>(5);
        while (matcher.find()) {
            String argument = matcher.group();
            if (argument.charAt(0) == '\'') {
                argument = argument.substring(1, argument.length() - 1).replaceAll("''", "'");
            }
            params.add(argument);
        }
        return new TemplateVariableType(typeName, params.toArray(new String[params.size()]));
    }

    private void fail(String message) throws TemplateException {
        this.fErrorMessage = message;
        throw new TemplateException(message);
    }

    private void updateOrCreateVariable(Map variables, String name, TemplateVariableType type, int offset) throws TemplateException {
        VariableDescription varDesc = (VariableDescription)variables.get(name);
        if (varDesc == null) {
            varDesc = new VariableDescription(name, type);
            variables.put(name, varDesc);
        } else {
            varDesc.mergeType(type);
        }
        varDesc.fOffsets.add(new Integer(offset));
    }

    private TemplateVariable[] createVariables(Map variables) {
        TemplateVariable[] result = new TemplateVariable[variables.size()];
        int idx = 0;
        Iterator it = variables.values().iterator();
        while (it.hasNext()) {
            TemplateVariable var;
            VariableDescription desc = (VariableDescription)it.next();
            TemplateVariableType type = desc.fType == null ? new TemplateVariableType(desc.fName) : desc.fType;
            int[] offsets = new int[desc.fOffsets.size()];
            int i = 0;
            Iterator intIt = desc.fOffsets.iterator();
            while (intIt.hasNext()) {
                Integer offset = (Integer)intIt.next();
                offsets[i] = offset;
                ++i;
            }
            this.fCurrentType = type;
            result[idx] = var = this.createVariable(type.getName(), desc.fName, offsets);
            ++idx;
        }
        this.fCurrentType = null;
        return result;
    }

    protected TemplateVariable createVariable(String type, String name, int[] offsets) {
        return this.createVariable(this.fCurrentType, name, offsets);
    }

    protected TemplateVariable createVariable(TemplateVariableType type, String name, int[] offsets) {
        return new TemplateVariable(type, name, name, offsets);
    }

    private final class VariableDescription {
        final List fOffsets = new ArrayList(5);
        final String fName;
        TemplateVariableType fType;

        VariableDescription(String name, TemplateVariableType type) {
            this.fName = name;
            this.fType = type;
        }

        void mergeType(TemplateVariableType type) throws TemplateException {
            if (type == null) {
                return;
            }
            if (this.fType == null) {
                this.fType = type;
            }
            if (!type.equals(this.fType)) {
                TemplateTranslator.this.fail(TextTemplateMessages.getFormattedString("TemplateTranslator.error.incompatible.type", this.fName));
            }
        }
    }
}

