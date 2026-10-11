/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Stack;
import java.util.StringTokenizer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.builders.CompilerFlags;
import org.eclipse.pde.internal.core.builders.XMLErrorReporter;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaInclude;
import org.eclipse.pde.internal.core.schema.IncludedSchemaDescriptor;
import org.eclipse.pde.internal.core.schema.SchemaDescriptor;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public class SchemaErrorReporter
extends XMLErrorReporter {
    public static final String[] forbiddenEndTagKeys = new String[]{"area", "base", "basefont", "col", "frame", "hr", "img", "input", "isindex", "link", "meta", "param"};
    public static final String[] optionalEndTagKeys = new String[]{"body", "br", "colgroup", "dd", "dt", "head", "html", "li", "option", "p", "tbody", "td", "tfoot", "th", "thead", "tr"};
    private ISchema fSchema;
    private static final String ELEMENT = "element";
    private static final String DOCUMENTATION = "documentation";
    private static final String ANNOTATION = "annotation";
    private static final String ATTRIBUTE = "attribute";
    private static final String INCLUDE = "include";
    private static final String ATTR_NAME = "name";
    private static final String ATTR_VALUE = "value";
    private static final String ATTR_USE = "use";
    private static final String ATTR_REF = "ref";
    private static final String ATTR_LOCATION = "schemaLocation";

    public SchemaErrorReporter(IFile file) {
        super(file);
        SchemaDescriptor desc = new SchemaDescriptor(this.fFile, true);
        this.fSchema = desc.getSchema(false);
    }

    public void validateContent(IProgressMonitor monitor) {
        ArrayList<String> elements = new ArrayList<String>();
        Element element = this.getDocumentRoot();
        if (element != null) {
            NodeList children = element.getChildNodes();
            int i = 0;
            while (i < children.getLength()) {
                Node child = children.item(i);
                if (child instanceof Element) {
                    Element childElement = (Element)child;
                    String name = childElement.getNodeName();
                    if (name != null && name.equals(ELEMENT)) {
                        String value = childElement.getAttribute(ATTR_NAME);
                        if (value != null && value.length() > 0) {
                            if (elements.contains(value)) {
                                this.report(NLS.bind((String)PDECoreMessages.Builders_Schema_duplicateElement, (Object)value), this.getLine((Element)child), 0, "fatal");
                            } else {
                                elements.add(value);
                            }
                        }
                    } else if (name != null && name.equals(INCLUDE)) {
                        this.validateInclude(childElement);
                    }
                    this.validate((Element)child);
                }
                ++i;
            }
        }
    }

    private void validate(Element element) {
        if (element.getNodeName().equals(ATTRIBUTE)) {
            this.validateAttribute(element);
        }
        NodeList children = element.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child instanceof Element) {
                if (child.getNodeName().equals(ANNOTATION)) {
                    this.validateAnnotation((Element)child);
                } else if (child.getNodeName().equals(ELEMENT)) {
                    this.validateElementReference((Element)child);
                } else {
                    this.validate((Element)child);
                }
            }
            ++i;
        }
    }

    private void validateAnnotation(Element element) {
        NodeList children = element.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child instanceof Element && child.getNodeName().equals(DOCUMENTATION)) {
                this.validateDocumentation((Element)child);
            }
            ++i;
        }
    }

    private void validateDocumentation(Element element) {
        int flag = CompilerFlags.getFlag(this.fProject, "compilers.s.open-tags");
        NodeList children = element.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            if (children.item(i) instanceof Text) {
                Text textNode = (Text)children.item(i);
                StringTokenizer text = new StringTokenizer(textNode.getData(), "<>", true);
                int lineNumber = this.getLine(element);
                Stack<StackEntry> stack = new Stack<StackEntry>();
                boolean errorReported = false;
                while (text.hasMoreTokens()) {
                    if (errorReported) break;
                    String next = text.nextToken();
                    if (next.equals("<")) {
                        if (text.countTokens() <= 2) continue;
                        String tagName = text.nextToken();
                        String closing = text.nextToken();
                        if (!closing.equals(">")) continue;
                        if (tagName.startsWith("!--") || tagName.endsWith("--") || tagName.startsWith("?") || tagName.endsWith("?")) {
                            lineNumber += this.getLineBreakCount(tagName);
                            continue;
                        }
                        if (tagName.endsWith("/")) {
                            if (!this.forbiddenEndTag(tagName = this.getTagName(tagName.substring(0, tagName.length() - 1)))) continue;
                            this.report(NLS.bind((String)PDECoreMessages.Builders_Schema_forbiddenEndTag, (Object)tagName), lineNumber, flag, "");
                            errorReported = true;
                            continue;
                        }
                        if (tagName.startsWith("/")) {
                            lineNumber += this.getLineBreakCount(tagName);
                            tagName = tagName.substring(1).trim();
                            boolean found = false;
                            while (!stack.isEmpty()) {
                                StackEntry entry = (StackEntry)stack.peek();
                                if (entry.tag.equalsIgnoreCase(tagName)) {
                                    stack.pop();
                                    found = true;
                                    break;
                                }
                                if (!this.optionalEndTag(entry.tag)) break;
                                stack.pop();
                            }
                            if (!stack.isEmpty() || found) continue;
                            this.report(NLS.bind((String)PDECoreMessages.Builders_Schema_noMatchingStartTag, (Object)tagName), lineNumber, flag, "");
                            errorReported = true;
                            continue;
                        }
                        String shortTag = this.getTagName(tagName);
                        if (!this.forbiddenEndTag(shortTag)) {
                            stack.push(new StackEntry(shortTag, lineNumber));
                        }
                        lineNumber += this.getLineBreakCount(tagName);
                        continue;
                    }
                    lineNumber += this.getLineBreakCount(next);
                }
                if (!errorReported) {
                    if (!stack.isEmpty()) {
                        StackEntry entry = (StackEntry)stack.pop();
                        if (!this.optionalEndTag(entry.tag)) {
                            this.report(NLS.bind((String)PDECoreMessages.Builders_Schema_noMatchingEndTag, (Object)entry.tag), entry.line, flag, "");
                        }
                    }
                    stack.clear();
                }
            }
            ++i;
        }
    }

    private String getTagName(String text) {
        StringTokenizer tokenizer = new StringTokenizer(text);
        return tokenizer.nextToken();
    }

    private boolean optionalEndTag(String tag) {
        int i = 0;
        while (i < optionalEndTagKeys.length) {
            if (tag.equalsIgnoreCase(optionalEndTagKeys[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean forbiddenEndTag(String tag) {
        int i = 0;
        while (i < forbiddenEndTagKeys.length) {
            if (tag.equalsIgnoreCase(forbiddenEndTagKeys[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private int getLineBreakCount(String tag) {
        StringTokenizer tokenizer = new StringTokenizer(tag, "\n", true);
        int token = 0;
        while (tokenizer.hasMoreTokens()) {
            if (!tokenizer.nextToken().equals("\n")) continue;
            ++token;
        }
        return token;
    }

    private void validateAttribute(Element element) {
        this.validateUse(element);
    }

    private void validateUse(Element element) {
        Attr use = element.getAttributeNode(ATTR_USE);
        Attr value = element.getAttributeNode(ATTR_VALUE);
        if (use != null && "default".equals(use.getValue()) && value == null) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Schema_valueRequired, (Object)element.getNodeName()), this.getLine(element), 0, "");
        } else if (use == null && value != null) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Schema_valueNotRequired, (Object)element.getNodeName()), this.getLine(element), 0, "");
        }
    }

    private void validateInclude(Element element) {
        if (this.fSchema != null) {
            ISchemaInclude[] includes = this.fSchema.getIncludes();
            String schemaLocation = element.getAttribute(ATTR_LOCATION);
            int i = 0;
            while (i < includes.length) {
                ISchemaInclude include = includes[i];
                ISchema includedSchema = include.getIncludedSchema();
                try {
                    if (includedSchema != null) {
                        URL includedSchemaUrl = includedSchema.getURL();
                        URL computedUrl = IncludedSchemaDescriptor.computeURL(this.fSchema.getSchemaDescriptor(), schemaLocation);
                        if (includedSchemaUrl != null && computedUrl != null && includedSchemaUrl.equals(computedUrl) && !includedSchema.isValid()) {
                            this.report(NLS.bind((String)PDECoreMessages.Builders_Schema_includeNotValid, (Object)schemaLocation), this.getLine(element), 0, "");
                        }
                    }
                }
                catch (MalformedURLException malformedURLException) {}
                ++i;
            }
        }
    }

    private void validateElementReference(Element element) {
        ISchemaElement referencedElement;
        String value = element.getAttribute(ATTR_REF);
        if (value != null && value.length() > 0 && (referencedElement = this.fSchema.findElement(value)) == null) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Schema_referencedElementNotFound, (Object)value), this.getLine(element), 0, "");
        }
    }

    class StackEntry {
        String tag;
        int line;

        public StackEntry(String tag, int line) {
            this.tag = tag;
            this.line = line;
        }
    }
}

