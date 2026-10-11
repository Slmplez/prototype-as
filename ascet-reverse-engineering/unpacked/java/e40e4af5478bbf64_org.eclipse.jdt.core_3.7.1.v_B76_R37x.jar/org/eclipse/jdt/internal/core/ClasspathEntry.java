/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.AccessRule;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.util.ManifestAnalyzer;
import org.eclipse.jdt.internal.core.ClasspathAccessRule;
import org.eclipse.jdt.internal.core.ClasspathAttribute;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.UserLibraryClasspathContainer;
import org.eclipse.jdt.internal.core.XMLWriter;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public class ClasspathEntry
implements IClasspathEntry {
    public static final String TAG_CLASSPATH = "classpath";
    public static final String TAG_CLASSPATHENTRY = "classpathentry";
    public static final String TAG_REFERENCED_ENTRY = "referencedentry";
    public static final String TAG_OUTPUT = "output";
    public static final String TAG_KIND = "kind";
    public static final String TAG_PATH = "path";
    public static final String TAG_SOURCEPATH = "sourcepath";
    public static final String TAG_ROOTPATH = "rootpath";
    public static final String TAG_EXPORTED = "exported";
    public static final String TAG_INCLUDING = "including";
    public static final String TAG_EXCLUDING = "excluding";
    public static final String TAG_ATTRIBUTES = "attributes";
    public static final String TAG_ATTRIBUTE = "attribute";
    public static final String TAG_ATTRIBUTE_NAME = "name";
    public static final String TAG_ATTRIBUTE_VALUE = "value";
    public static final String TAG_COMBINE_ACCESS_RULES = "combineaccessrules";
    public static final String TAG_ACCESS_RULES = "accessrules";
    public static final String TAG_ACCESS_RULE = "accessrule";
    public static final String TAG_PATTERN = "pattern";
    public static final String TAG_ACCESSIBLE = "accessible";
    public static final String TAG_NON_ACCESSIBLE = "nonaccessible";
    public static final String TAG_DISCOURAGED = "discouraged";
    public static final String TAG_IGNORE_IF_BETTER = "ignoreifbetter";
    public int entryKind;
    public int contentKind;
    public IPath path;
    private IPath[] inclusionPatterns;
    private char[][] fullInclusionPatternChars;
    private IPath[] exclusionPatterns;
    private char[][] fullExclusionPatternChars;
    private static final char[][] UNINIT_PATTERNS = new char[][]{"Non-initialized yet".toCharArray()};
    public static final ClasspathEntry[] NO_ENTRIES = new ClasspathEntry[0];
    private static final IPath[] NO_PATHS = new IPath[0];
    private static final IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
    private boolean combineAccessRules;
    private String rootID;
    private AccessRuleSet accessRuleSet;
    public static final IPath[] INCLUDE_ALL = new IPath[0];
    public static final IPath[] EXCLUDE_NONE = new IPath[0];
    public static final IClasspathAttribute[] NO_EXTRA_ATTRIBUTES = new IClasspathAttribute[0];
    public static final IAccessRule[] NO_ACCESS_RULES = new IAccessRule[0];
    public IPath sourceAttachmentPath;
    public IPath sourceAttachmentRootPath;
    public IClasspathEntry referencingEntry;
    public IPath specificOutputLocation;
    public static final int K_OUTPUT = 10;
    public static final String DOT_DOT = "..";
    public boolean isExported;
    public IClasspathAttribute[] extraAttributes;

    public ClasspathEntry(int contentKind, int entryKind, IPath path, IPath[] inclusionPatterns, IPath[] exclusionPatterns, IPath sourceAttachmentPath, IPath sourceAttachmentRootPath, IPath specificOutputLocation, boolean isExported, IAccessRule[] accessRules, boolean combineAccessRules, IClasspathAttribute[] extraAttributes) {
        this(contentKind, entryKind, path, inclusionPatterns, exclusionPatterns, sourceAttachmentPath, sourceAttachmentRootPath, specificOutputLocation, null, isExported, accessRules, combineAccessRules, extraAttributes);
    }

    public ClasspathEntry(int contentKind, int entryKind, IPath path, IPath[] inclusionPatterns, IPath[] exclusionPatterns, IPath sourceAttachmentPath, IPath sourceAttachmentRootPath, IPath specificOutputLocation, IClasspathEntry referencingEntry, boolean isExported, IAccessRule[] accessRules, boolean combineAccessRules, IClasspathAttribute[] extraAttributes) {
        int length;
        this.contentKind = contentKind;
        this.entryKind = entryKind;
        this.path = path;
        this.inclusionPatterns = inclusionPatterns;
        this.exclusionPatterns = exclusionPatterns;
        this.referencingEntry = referencingEntry;
        if (accessRules != null && (length = accessRules.length) > 0) {
            String classpathEntryName;
            byte classpathEntryType;
            AccessRule[] rules = new AccessRule[length];
            System.arraycopy(accessRules, 0, rules, 0, length);
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            if (this.entryKind == 2 || this.entryKind == 3) {
                classpathEntryType = 1;
                classpathEntryName = manager.intern(this.getPath().segment(0));
            } else {
                classpathEntryType = 2;
                IResource target = JavaModel.getWorkspaceTarget(path);
                classpathEntryName = target == null ? manager.intern(path.toOSString()) : manager.intern(path.makeRelative().toString());
            }
            this.accessRuleSet = new AccessRuleSet(rules, classpathEntryType, classpathEntryName);
        }
        this.combineAccessRules = combineAccessRules;
        this.extraAttributes = extraAttributes;
        if (inclusionPatterns != INCLUDE_ALL && inclusionPatterns.length > 0) {
            this.fullInclusionPatternChars = UNINIT_PATTERNS;
        }
        if (exclusionPatterns.length > 0) {
            this.fullExclusionPatternChars = UNINIT_PATTERNS;
        }
        this.sourceAttachmentPath = sourceAttachmentPath;
        this.sourceAttachmentRootPath = sourceAttachmentRootPath;
        this.specificOutputLocation = specificOutputLocation;
        this.isExported = isExported;
    }

    public boolean combineAccessRules() {
        return this.combineAccessRules;
    }

    public ClasspathEntry combineWith(ClasspathEntry referringEntry) {
        if (referringEntry == null) {
            return this;
        }
        if (referringEntry.isExported() || referringEntry.getAccessRuleSet() != null) {
            boolean combine = this.entryKind == 3 || referringEntry.combineAccessRules();
            return new ClasspathEntry(this.getContentKind(), this.getEntryKind(), this.getPath(), this.inclusionPatterns, this.exclusionPatterns, this.getSourceAttachmentPath(), this.getSourceAttachmentRootPath(), this.getOutputLocation(), referringEntry.isExported() || this.isExported, this.combine(referringEntry.getAccessRules(), this.getAccessRules(), combine), this.combineAccessRules, this.extraAttributes);
        }
        return this;
    }

    private IAccessRule[] combine(IAccessRule[] referringRules, IAccessRule[] rules, boolean combine) {
        if (!combine) {
            return rules;
        }
        if (rules == null || rules.length == 0) {
            return referringRules;
        }
        int referringRulesLength = referringRules.length;
        int accessRulesLength = rules.length;
        int rulesLength = referringRulesLength + accessRulesLength;
        IAccessRule[] result = new IAccessRule[rulesLength];
        System.arraycopy(referringRules, 0, result, 0, referringRulesLength);
        System.arraycopy(rules, 0, result, referringRulesLength, accessRulesLength);
        return result;
    }

    static IClasspathAttribute[] decodeExtraAttributes(NodeList attributes) {
        if (attributes == null) {
            return NO_EXTRA_ATTRIBUTES;
        }
        int length = attributes.getLength();
        if (length == 0) {
            return NO_EXTRA_ATTRIBUTES;
        }
        IClasspathAttribute[] result = new IClasspathAttribute[length];
        int index = 0;
        int i = 0;
        while (i < length) {
            String value;
            Element attribute;
            String name;
            Node node = attributes.item(i);
            if (node.getNodeType() == 1 && (name = (attribute = (Element)node).getAttribute(TAG_ATTRIBUTE_NAME)) != null && (value = attribute.getAttribute(TAG_ATTRIBUTE_VALUE)) != null) {
                result[index++] = new ClasspathAttribute(name, value);
            }
            ++i;
        }
        if (index != length) {
            IClasspathAttribute[] iClasspathAttributeArray = result;
            result = new IClasspathAttribute[index];
            System.arraycopy(iClasspathAttributeArray, 0, result, 0, index);
        }
        return result;
    }

    static IAccessRule[] decodeAccessRules(NodeList list) {
        if (list == null) {
            return null;
        }
        int length = list.getLength();
        if (length == 0) {
            return null;
        }
        IAccessRule[] result = new IAccessRule[length];
        int index = 0;
        int i = 0;
        while (i < length) {
            block7: {
                int kind;
                Element elementAccessRule;
                String pattern;
                block9: {
                    String tagKind;
                    block10: {
                        block8: {
                            Node accessRule = list.item(i);
                            if (accessRule.getNodeType() != 1 || (pattern = (elementAccessRule = (Element)accessRule).getAttribute(TAG_PATTERN)) == null) break block7;
                            tagKind = elementAccessRule.getAttribute(TAG_KIND);
                            if (!TAG_ACCESSIBLE.equals(tagKind)) break block8;
                            kind = 0;
                            break block9;
                        }
                        if (!TAG_NON_ACCESSIBLE.equals(tagKind)) break block10;
                        kind = 1;
                        break block9;
                    }
                    if (!TAG_DISCOURAGED.equals(tagKind)) break block7;
                    kind = 2;
                }
                boolean ignoreIfBetter = "true".equals(elementAccessRule.getAttribute(TAG_IGNORE_IF_BETTER));
                result[index++] = new ClasspathAccessRule((IPath)new Path(pattern), ignoreIfBetter ? kind | 0x100 : kind);
            }
            ++i;
        }
        if (index != length) {
            IAccessRule[] iAccessRuleArray = result;
            result = new IAccessRule[index];
            System.arraycopy(iAccessRuleArray, 0, result, 0, index);
        }
        return result;
    }

    private static IPath[] decodePatterns(NamedNodeMap nodeMap, String tag) {
        char[][] patterns;
        int patternCount;
        String sequence = ClasspathEntry.removeAttribute(tag, nodeMap);
        if (!sequence.equals("") && (patternCount = (patterns = CharOperation.splitOn('|', sequence.toCharArray())).length) > 0) {
            IPath[] paths = new IPath[patternCount];
            int index = 0;
            int j = 0;
            while (j < patternCount) {
                char[] pattern = patterns[j];
                if (pattern.length != 0) {
                    paths[index++] = new Path(new String(pattern));
                }
                ++j;
            }
            if (index < patternCount) {
                IPath[] iPathArray = paths;
                paths = new IPath[index];
                System.arraycopy(iPathArray, 0, paths, 0, index);
            }
            return paths;
        }
        return null;
    }

    private static void decodeUnknownNode(Node node, StringBuffer buffer, IJavaProject project) {
        ByteArrayOutputStream s = new ByteArrayOutputStream();
        try {
            OutputStreamWriter writer = new OutputStreamWriter((OutputStream)s, "UTF8");
            XMLWriter xmlWriter = new XMLWriter((Writer)writer, project, false);
            ClasspathEntry.decodeUnknownNode(node, xmlWriter, true);
            xmlWriter.flush();
            xmlWriter.close();
            buffer.append(s.toString("UTF8"));
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {}
    }

    private static void decodeUnknownNode(Node node, XMLWriter xmlWriter, boolean insertNewLine) {
        switch (node.getNodeType()) {
            case 1: {
                int length;
                HashMap<String, String> parameters = null;
                NamedNodeMap attributes = node.getAttributes();
                if (attributes != null && (length = attributes.getLength()) > 0) {
                    parameters = new HashMap<String, String>();
                    int i = 0;
                    while (i < length) {
                        Node attribute = attributes.item(i);
                        parameters.put(attribute.getNodeName(), attribute.getNodeValue());
                        ++i;
                    }
                }
                NodeList children = node.getChildNodes();
                int childrenLength = children.getLength();
                String nodeName = node.getNodeName();
                xmlWriter.printTag(nodeName, parameters, false, false, childrenLength == 0);
                if (childrenLength <= 0) break;
                int i = 0;
                while (i < childrenLength) {
                    ClasspathEntry.decodeUnknownNode(children.item(i), xmlWriter, false);
                    ++i;
                }
                xmlWriter.endTag(nodeName, false, insertNewLine);
                break;
            }
            case 3: {
                String data = ((Text)node).getData();
                xmlWriter.printString(data, false, false);
            }
        }
    }

    public char[][] fullExclusionPatternChars() {
        if (this.fullExclusionPatternChars == UNINIT_PATTERNS) {
            int length = this.exclusionPatterns.length;
            this.fullExclusionPatternChars = new char[length][];
            IPath prefixPath = this.path.removeTrailingSeparator();
            int i = 0;
            while (i < length) {
                this.fullExclusionPatternChars[i] = prefixPath.append(this.exclusionPatterns[i]).toString().toCharArray();
                ++i;
            }
        }
        return this.fullExclusionPatternChars;
    }

    public char[][] fullInclusionPatternChars() {
        if (this.fullInclusionPatternChars == UNINIT_PATTERNS) {
            int length = this.inclusionPatterns.length;
            this.fullInclusionPatternChars = new char[length][];
            IPath prefixPath = this.path.removeTrailingSeparator();
            int i = 0;
            while (i < length) {
                this.fullInclusionPatternChars[i] = prefixPath.append(this.inclusionPatterns[i]).toString().toCharArray();
                ++i;
            }
        }
        return this.fullInclusionPatternChars;
    }

    public void elementEncode(XMLWriter writer, IPath projectPath, boolean indent, boolean newLine, Map unknownElements, boolean isReferencedEntry) {
        UnknownXmlElements unknownXmlElements;
        HashMap<String, String> parameters = new HashMap<String, String>();
        parameters.put(TAG_KIND, ClasspathEntry.kindToString(this.entryKind));
        IPath xmlPath = this.path;
        if (this.entryKind != 4 && this.entryKind != 5 && xmlPath.isAbsolute() && projectPath != null && projectPath.isPrefixOf(xmlPath)) {
            if (xmlPath.segment(0).equals(projectPath.segment(0))) {
                xmlPath = xmlPath.removeFirstSegments(1);
                xmlPath = xmlPath.makeRelative();
            } else {
                xmlPath = xmlPath.makeAbsolute();
            }
        }
        parameters.put(TAG_PATH, String.valueOf(xmlPath));
        if (this.sourceAttachmentPath != null) {
            xmlPath = this.sourceAttachmentPath;
            if (this.entryKind != 4 && projectPath != null && projectPath.isPrefixOf(xmlPath) && xmlPath.segment(0).equals(projectPath.segment(0))) {
                xmlPath = xmlPath.removeFirstSegments(1);
                xmlPath = xmlPath.makeRelative();
            }
            parameters.put(TAG_SOURCEPATH, String.valueOf(xmlPath));
        }
        if (this.sourceAttachmentRootPath != null) {
            parameters.put(TAG_ROOTPATH, String.valueOf(this.sourceAttachmentRootPath));
        }
        if (this.isExported) {
            parameters.put(TAG_EXPORTED, "true");
        }
        ClasspathEntry.encodePatterns(this.inclusionPatterns, TAG_INCLUDING, parameters);
        ClasspathEntry.encodePatterns(this.exclusionPatterns, TAG_EXCLUDING, parameters);
        if (this.entryKind == 2 && !this.combineAccessRules) {
            parameters.put(TAG_COMBINE_ACCESS_RULES, "false");
        }
        UnknownXmlElements unknownXmlElements2 = unknownXmlElements = unknownElements == null ? null : (UnknownXmlElements)unknownElements.get(this.path);
        if (unknownXmlElements != null) {
            String[] unknownAttributes = unknownXmlElements.attributes;
            if (unknownXmlElements.attributes != null) {
                int i = 0;
                int length = unknownAttributes.length;
                while (i < length) {
                    String tagName = unknownAttributes[i];
                    String tagValue = unknownAttributes[i + 1];
                    parameters.put(tagName, tagValue);
                    i += 2;
                }
            }
        }
        if (this.specificOutputLocation != null) {
            IPath outputLocation = this.specificOutputLocation.removeFirstSegments(1);
            outputLocation = outputLocation.makeRelative();
            parameters.put(TAG_OUTPUT, String.valueOf(outputLocation));
        }
        boolean hasExtraAttributes = this.extraAttributes.length != 0;
        boolean hasRestrictions = this.getAccessRuleSet() != null;
        ArrayList unknownChildren = unknownXmlElements != null ? unknownXmlElements.children : null;
        boolean hasUnknownChildren = unknownChildren != null;
        String tagName = isReferencedEntry ? TAG_REFERENCED_ENTRY : TAG_CLASSPATHENTRY;
        writer.printTag(tagName, parameters, indent, newLine, !hasExtraAttributes && !hasRestrictions && !hasUnknownChildren);
        if (hasExtraAttributes) {
            this.encodeExtraAttributes(writer, indent, newLine);
        }
        if (hasRestrictions) {
            this.encodeAccessRules(writer, indent, newLine);
        }
        if (hasUnknownChildren) {
            this.encodeUnknownChildren(writer, indent, newLine, unknownChildren);
        }
        if (hasExtraAttributes || hasRestrictions || hasUnknownChildren) {
            writer.endTag(tagName, indent, true);
        }
    }

    void encodeExtraAttributes(XMLWriter writer, boolean indent, boolean newLine) {
        writer.startTag(TAG_ATTRIBUTES, indent);
        int i = 0;
        while (i < this.extraAttributes.length) {
            IClasspathAttribute attribute = this.extraAttributes[i];
            HashMap<String, String> parameters = new HashMap<String, String>();
            parameters.put(TAG_ATTRIBUTE_NAME, attribute.getName());
            parameters.put(TAG_ATTRIBUTE_VALUE, attribute.getValue());
            writer.printTag(TAG_ATTRIBUTE, parameters, indent, newLine, true);
            ++i;
        }
        writer.endTag(TAG_ATTRIBUTES, indent, true);
    }

    void encodeAccessRules(XMLWriter writer, boolean indent, boolean newLine) {
        writer.startTag(TAG_ACCESS_RULES, indent);
        AccessRule[] rules = this.getAccessRuleSet().getAccessRules();
        int i = 0;
        int length = rules.length;
        while (i < length) {
            this.encodeAccessRule(rules[i], writer, indent, newLine);
            ++i;
        }
        writer.endTag(TAG_ACCESS_RULES, indent, true);
    }

    private void encodeAccessRule(AccessRule accessRule, XMLWriter writer, boolean indent, boolean newLine) {
        HashMap<String, String> parameters = new HashMap<String, String>();
        parameters.put(TAG_PATTERN, new String(accessRule.pattern));
        switch (accessRule.getProblemId()) {
            case 0x1000133: {
                parameters.put(TAG_KIND, TAG_NON_ACCESSIBLE);
                break;
            }
            case 0x1000118: {
                parameters.put(TAG_KIND, TAG_DISCOURAGED);
                break;
            }
            default: {
                parameters.put(TAG_KIND, TAG_ACCESSIBLE);
            }
        }
        if (accessRule.ignoreIfBetter()) {
            parameters.put(TAG_IGNORE_IF_BETTER, "true");
        }
        writer.printTag(TAG_ACCESS_RULE, parameters, indent, newLine, true);
    }

    private void encodeUnknownChildren(XMLWriter writer, boolean indent, boolean newLine, ArrayList unknownChildren) {
        int i = 0;
        int length = unknownChildren.size();
        while (i < length) {
            String child = (String)unknownChildren.get(i);
            writer.printString(child, indent, false);
            ++i;
        }
    }

    public static IClasspathEntry elementDecode(Element element, IJavaProject project, Map unknownElements) {
        NodeList attributeList;
        IAccessRule[] accessRules;
        IPath[] exclusionPatterns;
        Path sourceAttachmentPath;
        IPath projectPath = project.getProject().getFullPath();
        NamedNodeMap attributes = element.getAttributes();
        NodeList children = element.getChildNodes();
        boolean[] foundChildren = new boolean[children.getLength()];
        String kindAttr = ClasspathEntry.removeAttribute(TAG_KIND, attributes);
        String pathAttr = ClasspathEntry.removeAttribute(TAG_PATH, attributes);
        Path path = new Path(pathAttr);
        int kind = ClasspathEntry.kindFromString(kindAttr);
        if (!(kind == 4 || kind == 5 || path.isAbsolute() || path.segmentCount() > 0 && path.segment(0).equals(DOT_DOT))) {
            path = projectPath.append((IPath)path);
        }
        Path path2 = sourceAttachmentPath = element.hasAttribute(TAG_SOURCEPATH) ? new Path(ClasspathEntry.removeAttribute(TAG_SOURCEPATH, attributes)) : null;
        if (kind != 4 && sourceAttachmentPath != null && !sourceAttachmentPath.isAbsolute()) {
            sourceAttachmentPath = projectPath.append((IPath)sourceAttachmentPath);
        }
        Path sourceAttachmentRootPath = element.hasAttribute(TAG_ROOTPATH) ? new Path(ClasspathEntry.removeAttribute(TAG_ROOTPATH, attributes)) : null;
        boolean isExported = ClasspathEntry.removeAttribute(TAG_EXPORTED, attributes).equals("true");
        IPath[] inclusionPatterns = ClasspathEntry.decodePatterns(attributes, TAG_INCLUDING);
        if (inclusionPatterns == null) {
            inclusionPatterns = INCLUDE_ALL;
        }
        if ((exclusionPatterns = ClasspathEntry.decodePatterns(attributes, TAG_EXCLUDING)) == null) {
            exclusionPatterns = EXCLUDE_NONE;
        }
        if ((accessRules = ClasspathEntry.decodeAccessRules(attributeList = ClasspathEntry.getChildAttributes(TAG_ACCESS_RULES, children, foundChildren))) == null) {
            accessRules = ClasspathEntry.getAccessRules(inclusionPatterns, exclusionPatterns);
        }
        boolean combineAccessRestrictions = !ClasspathEntry.removeAttribute(TAG_COMBINE_ACCESS_RULES, attributes).equals("false");
        attributeList = ClasspathEntry.getChildAttributes(TAG_ATTRIBUTES, children, foundChildren);
        IClasspathAttribute[] extraAttributes = ClasspathEntry.decodeExtraAttributes(attributeList);
        IPath outputLocation = element.hasAttribute(TAG_OUTPUT) ? projectPath.append(ClasspathEntry.removeAttribute(TAG_OUTPUT, attributes)) : null;
        String[] unknownAttributes = null;
        ArrayList<String> unknownChildren = null;
        if (unknownElements != null) {
            int i;
            int unknownAttributeLength = attributes.getLength();
            if (unknownAttributeLength != 0) {
                unknownAttributes = new String[unknownAttributeLength * 2];
                i = 0;
                while (i < unknownAttributeLength) {
                    Node attribute = attributes.item(i);
                    unknownAttributes[i * 2] = attribute.getNodeName();
                    unknownAttributes[i * 2 + 1] = attribute.getNodeValue();
                    ++i;
                }
            }
            i = 0;
            int length = foundChildren.length;
            while (i < length) {
                Node node;
                if (!foundChildren[i] && (node = children.item(i)).getNodeType() == 1) {
                    if (unknownChildren == null) {
                        unknownChildren = new ArrayList<String>();
                    }
                    StringBuffer buffer = new StringBuffer();
                    ClasspathEntry.decodeUnknownNode(node, buffer, project);
                    unknownChildren.add(buffer.toString());
                }
                ++i;
            }
        }
        IClasspathEntry entry = null;
        switch (kind) {
            case 2: {
                entry = new ClasspathEntry(1, 2, (IPath)path, INCLUDE_ALL, EXCLUDE_NONE, null, null, null, isExported, accessRules, combineAccessRestrictions, extraAttributes);
                break;
            }
            case 1: {
                entry = JavaCore.newLibraryEntry((IPath)path, (IPath)sourceAttachmentPath, (IPath)sourceAttachmentRootPath, accessRules, extraAttributes, isExported);
                break;
            }
            case 3: {
                String projSegment = path.segment(0);
                if (projSegment != null && projSegment.equals(project.getElementName())) {
                    entry = JavaCore.newSourceEntry((IPath)path, inclusionPatterns, exclusionPatterns, outputLocation, extraAttributes);
                    break;
                }
                if (path.segmentCount() == 1) {
                    entry = JavaCore.newProjectEntry((IPath)path, accessRules, combineAccessRestrictions, extraAttributes, isExported);
                    break;
                }
                entry = JavaCore.newSourceEntry((IPath)path, inclusionPatterns, exclusionPatterns, outputLocation, extraAttributes);
                break;
            }
            case 4: {
                entry = JavaCore.newVariableEntry((IPath)path, (IPath)sourceAttachmentPath, (IPath)sourceAttachmentRootPath, accessRules, extraAttributes, isExported);
                break;
            }
            case 5: {
                entry = JavaCore.newContainerEntry((IPath)path, accessRules, extraAttributes, isExported);
                break;
            }
            case 10: {
                if (!path.isAbsolute()) {
                    return null;
                }
                entry = new ClasspathEntry(10, 1, (IPath)path, INCLUDE_ALL, EXCLUDE_NONE, null, null, null, false, null, false, NO_EXTRA_ATTRIBUTES);
                break;
            }
            default: {
                throw new AssertionFailedException(Messages.bind(Messages.classpath_unknownKind, kindAttr));
            }
        }
        if (unknownAttributes != null || unknownChildren != null) {
            UnknownXmlElements unknownXmlElements = new UnknownXmlElements();
            unknownXmlElements.attributes = unknownAttributes;
            unknownXmlElements.children = unknownChildren;
            unknownElements.put(path, unknownXmlElements);
        }
        return entry;
    }

    public static boolean hasDotDot(IPath path) {
        int i = 0;
        int length = path.segmentCount();
        while (i < length) {
            if (DOT_DOT.equals(path.segment(i))) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static NodeList getChildAttributes(String childName, NodeList children, boolean[] foundChildren) {
        int i = 0;
        int length = foundChildren.length;
        while (i < length) {
            Node node = children.item(i);
            if (childName.equals(node.getNodeName())) {
                foundChildren[i] = true;
                return node.getChildNodes();
            }
            ++i;
        }
        return null;
    }

    private static String removeAttribute(String nodeName, NamedNodeMap nodeMap) {
        Node node = ClasspathEntry.removeNode(nodeName, nodeMap);
        if (node == null) {
            return "";
        }
        return node.getNodeValue();
    }

    private static Node removeNode(String nodeName, NamedNodeMap nodeMap) {
        try {
            return nodeMap.removeNamedItem(nodeName);
        }
        catch (DOMException e) {
            if (e.code != 8) {
                throw e;
            }
            return null;
        }
    }

    public static IPath[] resolvedChainedLibraries(IPath jarPath) {
        ArrayList result = new ArrayList();
        ClasspathEntry.resolvedChainedLibraries(jarPath, new HashSet(), result);
        if (result.size() == 0) {
            return NO_PATHS;
        }
        return result.toArray(new IPath[result.size()]);
    }

    private static void resolvedChainedLibraries(IPath jarPath, HashSet visited, ArrayList result) {
        if (visited.contains(jarPath)) {
            return;
        }
        visited.add(jarPath);
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        if (manager.isNonChainingJar(jarPath)) {
            return;
        }
        List calledFileNames = ClasspathEntry.getCalledFileNames(jarPath);
        if (calledFileNames == null) {
            manager.addNonChainingJar(jarPath);
        } else {
            Iterator calledFilesIterator = calledFileNames.iterator();
            IPath directoryPath = jarPath.removeLastSegments(1);
            while (calledFilesIterator.hasNext()) {
                String calledFileName = (String)calledFilesIterator.next();
                if (!directoryPath.isValidPath(calledFileName)) {
                    if (!JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) continue;
                    Util.verbose("Invalid Class-Path entry " + calledFileName + " in manifest of jar file: " + jarPath.toOSString());
                    continue;
                }
                IPath calledJar = directoryPath.append((IPath)new Path(calledFileName));
                if (calledJar.segmentCount() == 0) {
                    if (!JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) continue;
                    Util.verbose("Invalid Class-Path entry " + calledFileName + " in manifest of jar file: " + jarPath.toOSString());
                    continue;
                }
                ClasspathEntry.resolvedChainedLibraries(calledJar, visited, result);
                result.add(calledJar);
            }
        }
    }

    /*
     * Loose catch block
     */
    private static List getCalledFileNames(IPath jarPath) {
        List calledFileNames;
        InputStream inputStream;
        ZipFile zip;
        JavaModelManager manager;
        block33: {
            block34: {
                ManifestAnalyzer analyzer;
                block31: {
                    block32: {
                        ZipEntry manifest;
                        block29: {
                            block30: {
                                Object target = JavaModel.getTarget(jarPath, true);
                                if (!(target instanceof IFile) && !(target instanceof File)) {
                                    return null;
                                }
                                manager = JavaModelManager.getJavaModelManager();
                                zip = null;
                                inputStream = null;
                                calledFileNames = null;
                                zip = manager.getZipFile(jarPath);
                                manifest = zip.getEntry("META-INF/MANIFEST.MF");
                                if (manifest != null) break block29;
                                if (inputStream == null) break block30;
                                try {
                                    inputStream.close();
                                }
                                catch (IOException iOException) {}
                            }
                            manager.closeZipFile(zip);
                            return null;
                        }
                        analyzer = new ManifestAnalyzer();
                        inputStream = zip.getInputStream(manifest);
                        boolean success = analyzer.analyzeManifestContents(inputStream);
                        calledFileNames = analyzer.getCalledFileNames();
                        if (success && (analyzer.getClasspathSectionsCount() != 1 || calledFileNames != null)) break block31;
                        if (JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            Util.verbose("Invalid Class-Path header in manifest of jar file: " + jarPath.toOSString());
                        }
                        if (inputStream == null) break block32;
                        try {
                            inputStream.close();
                        }
                        catch (IOException iOException) {}
                    }
                    manager.closeZipFile(zip);
                    return null;
                }
                if (analyzer.getClasspathSectionsCount() <= 1) break block33;
                if (JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                    Util.verbose("Multiple Class-Path headers in manifest of jar file: " + jarPath.toOSString());
                }
                if (inputStream == null) break block34;
                try {
                    inputStream.close();
                }
                catch (IOException iOException) {}
            }
            manager.closeZipFile(zip);
            return null;
            catch (CoreException e) {
                block35: {
                    if (JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                        Util.verbose("Could not read Class-Path header in manifest of jar file: " + jarPath.toOSString());
                        e.printStackTrace();
                    }
                    if (inputStream == null) break block35;
                    try {
                        inputStream.close();
                    }
                    catch (IOException iOException) {}
                }
                manager.closeZipFile(zip);
            }
            catch (IOException e2) {
                block36: {
                    if (JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                        Util.verbose("Could not read Class-Path header in manifest of jar file: " + jarPath.toOSString());
                        e2.printStackTrace();
                    }
                    if (inputStream == null) break block36;
                    {
                        catch (Throwable throwable) {
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                }
                                catch (IOException iOException) {}
                            }
                            manager.closeZipFile(zip);
                            throw throwable;
                        }
                    }
                    try {
                        inputStream.close();
                    }
                    catch (IOException iOException) {}
                }
                manager.closeZipFile(zip);
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            }
            catch (IOException iOException) {}
        }
        manager.closeZipFile(zip);
        return calledFileNames;
    }

    public static IPath resolveDotDot(IPath reference, IPath path) {
        IPath newPath = null;
        IPath workspaceLocation = workspaceRoot.getLocation();
        if (reference == null || workspaceLocation.isPrefixOf(reference)) {
            int i = 0;
            int length = path.segmentCount();
            while (i < length) {
                String segment = path.segment(i);
                if (DOT_DOT.equals(segment)) {
                    newPath = newPath == null ? (i == 0 ? workspaceLocation : path.removeFirstSegments(i)) : (newPath.segmentCount() > 0 ? newPath.removeLastSegments(1) : workspaceLocation);
                } else if (newPath != null) {
                    newPath = newPath.equals((Object)workspaceLocation) && workspaceRoot.getProject(segment).isAccessible() ? new Path(segment).makeAbsolute() : newPath.append(segment);
                }
                ++i;
            }
        } else {
            int i = 0;
            int length = path.segmentCount();
            while (i < length) {
                String segment = path.segment(i);
                if (DOT_DOT.equals(segment)) {
                    if (newPath == null) {
                        newPath = reference;
                    }
                    if (newPath.segmentCount() > 0) {
                        newPath = newPath.removeLastSegments(1);
                    }
                } else if (newPath != null) {
                    newPath = newPath.append(segment);
                }
                ++i;
            }
        }
        if (newPath == null) {
            return path;
        }
        return newPath;
    }

    private static void encodePatterns(IPath[] patterns, String tag, Map parameters) {
        if (patterns != null && patterns.length > 0) {
            StringBuffer rule = new StringBuffer(10);
            int i = 0;
            int max = patterns.length;
            while (i < max) {
                if (i > 0) {
                    rule.append('|');
                }
                rule.append(patterns[i]);
                ++i;
            }
            parameters.put(tag, String.valueOf(rule));
        }
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object instanceof ClasspathEntry) {
            ClasspathEntry otherEntry = (ClasspathEntry)object;
            if (this.contentKind != otherEntry.getContentKind()) {
                return false;
            }
            if (this.entryKind != otherEntry.getEntryKind()) {
                return false;
            }
            if (this.isExported != otherEntry.isExported()) {
                return false;
            }
            if (!this.path.equals((Object)otherEntry.getPath())) {
                return false;
            }
            IPath otherPath = otherEntry.getSourceAttachmentPath();
            if (this.sourceAttachmentPath == null ? otherPath != null : !this.sourceAttachmentPath.equals((Object)otherPath)) {
                return false;
            }
            otherPath = otherEntry.getSourceAttachmentRootPath();
            if (this.sourceAttachmentRootPath == null ? otherPath != null : !this.sourceAttachmentRootPath.equals((Object)otherPath)) {
                return false;
            }
            if (!ClasspathEntry.equalPatterns(this.inclusionPatterns, otherEntry.getInclusionPatterns())) {
                return false;
            }
            if (!ClasspathEntry.equalPatterns(this.exclusionPatterns, otherEntry.getExclusionPatterns())) {
                return false;
            }
            AccessRuleSet otherRuleSet = otherEntry.getAccessRuleSet();
            if (this.getAccessRuleSet() != null ? !this.getAccessRuleSet().equals(otherRuleSet) : otherRuleSet != null) {
                return false;
            }
            if (this.combineAccessRules != otherEntry.combineAccessRules()) {
                return false;
            }
            otherPath = otherEntry.getOutputLocation();
            if (this.specificOutputLocation == null ? otherPath != null : !this.specificOutputLocation.equals((Object)otherPath)) {
                return false;
            }
            return ClasspathEntry.equalAttributes(this.extraAttributes, otherEntry.getExtraAttributes());
        }
        return false;
    }

    private static boolean equalAttributes(IClasspathAttribute[] firstAttributes, IClasspathAttribute[] secondAttributes) {
        if (firstAttributes != secondAttributes) {
            if (firstAttributes == null) {
                return false;
            }
            int length = firstAttributes.length;
            if (secondAttributes == null || secondAttributes.length != length) {
                return false;
            }
            int i = 0;
            while (i < length) {
                if (!firstAttributes[i].equals(secondAttributes[i])) {
                    return false;
                }
                ++i;
            }
        }
        return true;
    }

    private static boolean equalPatterns(IPath[] firstPatterns, IPath[] secondPatterns) {
        if (firstPatterns != secondPatterns) {
            if (firstPatterns == null) {
                return false;
            }
            int length = firstPatterns.length;
            if (secondPatterns == null || secondPatterns.length != length) {
                return false;
            }
            int i = 0;
            while (i < length) {
                if (!firstPatterns[i].toString().equals(secondPatterns[i].toString())) {
                    return false;
                }
                ++i;
            }
        }
        return true;
    }

    public IAccessRule[] getAccessRules() {
        if (this.accessRuleSet == null) {
            return NO_ACCESS_RULES;
        }
        AccessRule[] rules = this.accessRuleSet.getAccessRules();
        int length = rules.length;
        if (length == 0) {
            return NO_ACCESS_RULES;
        }
        IAccessRule[] result = new IAccessRule[length];
        System.arraycopy(rules, 0, result, 0, length);
        return result;
    }

    public AccessRuleSet getAccessRuleSet() {
        return this.accessRuleSet;
    }

    public int getContentKind() {
        return this.contentKind;
    }

    public int getEntryKind() {
        return this.entryKind;
    }

    public IPath[] getExclusionPatterns() {
        return this.exclusionPatterns;
    }

    public IClasspathAttribute[] getExtraAttributes() {
        return this.extraAttributes;
    }

    public IPath[] getInclusionPatterns() {
        return this.inclusionPatterns;
    }

    public IPath getOutputLocation() {
        return this.specificOutputLocation;
    }

    public IPath getPath() {
        return this.path;
    }

    public IPath getSourceAttachmentPath() {
        return this.sourceAttachmentPath;
    }

    public IPath getSourceAttachmentRootPath() {
        return this.sourceAttachmentRootPath;
    }

    public IClasspathEntry getReferencingEntry() {
        return this.referencingEntry;
    }

    public int hashCode() {
        return this.path.hashCode();
    }

    public boolean isExported() {
        return this.isExported;
    }

    public boolean isOptional() {
        int i = 0;
        int length = this.extraAttributes.length;
        while (i < length) {
            IClasspathAttribute attribute = this.extraAttributes[i];
            if ("optional".equals(attribute.getName()) && "true".equals(attribute.getValue())) {
                return true;
            }
            ++i;
        }
        return false;
    }

    static int kindFromString(String kindStr) {
        if (kindStr.equalsIgnoreCase("prj")) {
            return 2;
        }
        if (kindStr.equalsIgnoreCase("var")) {
            return 4;
        }
        if (kindStr.equalsIgnoreCase("con")) {
            return 5;
        }
        if (kindStr.equalsIgnoreCase("src")) {
            return 3;
        }
        if (kindStr.equalsIgnoreCase("lib")) {
            return 1;
        }
        if (kindStr.equalsIgnoreCase(TAG_OUTPUT)) {
            return 10;
        }
        return -1;
    }

    static String kindToString(int kind) {
        switch (kind) {
            case 2: {
                return "src";
            }
            case 3: {
                return "src";
            }
            case 1: {
                return "lib";
            }
            case 4: {
                return "var";
            }
            case 5: {
                return "con";
            }
            case 10: {
                return TAG_OUTPUT;
            }
        }
        return "unknown";
    }

    public static IAccessRule[] getAccessRules(IPath[] accessibleFiles, IPath[] nonAccessibleFiles) {
        int nonAccessibleFilesLength;
        int accessibleFilesLength = accessibleFiles == null ? 0 : accessibleFiles.length;
        int length = accessibleFilesLength + (nonAccessibleFilesLength = nonAccessibleFiles == null ? 0 : nonAccessibleFiles.length);
        if (length == 0) {
            return null;
        }
        IAccessRule[] accessRules = new IAccessRule[length];
        int i = 0;
        while (i < accessibleFilesLength) {
            accessRules[i] = JavaCore.newAccessRule(accessibleFiles[i], 0);
            ++i;
        }
        i = 0;
        while (i < nonAccessibleFilesLength) {
            accessRules[accessibleFilesLength + i] = JavaCore.newAccessRule(nonAccessibleFiles[i], 1);
            ++i;
        }
        return accessRules;
    }

    public String toString() {
        int i;
        StringBuffer buffer = new StringBuffer();
        Object target = JavaModel.getTarget(this.getPath(), true);
        if (target instanceof File) {
            buffer.append(this.getPath().toOSString());
        } else {
            buffer.append(String.valueOf(this.getPath()));
        }
        buffer.append('[');
        switch (this.getEntryKind()) {
            case 1: {
                buffer.append("CPE_LIBRARY");
                break;
            }
            case 2: {
                buffer.append("CPE_PROJECT");
                break;
            }
            case 3: {
                buffer.append("CPE_SOURCE");
                break;
            }
            case 4: {
                buffer.append("CPE_VARIABLE");
                break;
            }
            case 5: {
                buffer.append("CPE_CONTAINER");
            }
        }
        buffer.append("][");
        switch (this.getContentKind()) {
            case 2: {
                buffer.append("K_BINARY");
                break;
            }
            case 1: {
                buffer.append("K_SOURCE");
                break;
            }
            case 10: {
                buffer.append("K_OUTPUT");
            }
        }
        buffer.append(']');
        if (this.getSourceAttachmentPath() != null) {
            buffer.append("[sourcePath:");
            buffer.append(this.getSourceAttachmentPath());
            buffer.append(']');
        }
        if (this.getSourceAttachmentRootPath() != null) {
            buffer.append("[rootPath:");
            buffer.append(this.getSourceAttachmentRootPath());
            buffer.append(']');
        }
        buffer.append("[isExported:");
        buffer.append(this.isExported);
        buffer.append(']');
        IPath[] patterns = this.inclusionPatterns;
        int length = patterns == null ? 0 : patterns.length;
        if (length > 0) {
            buffer.append("[including:");
            i = 0;
            while (i < length) {
                buffer.append(patterns[i]);
                if (i != length - 1) {
                    buffer.append('|');
                }
                ++i;
            }
            buffer.append(']');
        }
        if ((length = (patterns = this.exclusionPatterns) == null ? 0 : patterns.length) > 0) {
            buffer.append("[excluding:");
            i = 0;
            while (i < length) {
                buffer.append(patterns[i]);
                if (i != length - 1) {
                    buffer.append('|');
                }
                ++i;
            }
            buffer.append(']');
        }
        if (this.accessRuleSet != null) {
            buffer.append('[');
            buffer.append(this.accessRuleSet.toString(false));
            buffer.append(']');
        }
        if (this.entryKind == 2) {
            buffer.append("[combine access rules:");
            buffer.append(this.combineAccessRules);
            buffer.append(']');
        }
        if (this.getOutputLocation() != null) {
            buffer.append("[output:");
            buffer.append(this.getOutputLocation());
            buffer.append(']');
        }
        if ((length = this.extraAttributes == null ? 0 : this.extraAttributes.length) > 0) {
            buffer.append("[attributes:");
            i = 0;
            while (i < length) {
                buffer.append(this.extraAttributes[i]);
                if (i != length - 1) {
                    buffer.append(',');
                }
                ++i;
            }
            buffer.append(']');
        }
        return buffer.toString();
    }

    public ClasspathEntry resolvedDotDot(IPath reference) {
        IPath resolvedPath = ClasspathEntry.resolveDotDot(reference, this.path);
        if (resolvedPath == this.path) {
            return this;
        }
        return new ClasspathEntry(this.getContentKind(), this.getEntryKind(), resolvedPath, this.inclusionPatterns, this.exclusionPatterns, this.getSourceAttachmentPath(), this.getSourceAttachmentRootPath(), this.getOutputLocation(), this.getReferencingEntry(), this.isExported, this.getAccessRules(), this.combineAccessRules, this.extraAttributes);
    }

    public ClasspathEntry[] resolvedChainedLibraries() {
        IPath[] paths = ClasspathEntry.resolvedChainedLibraries(this.getPath());
        int length = paths.length;
        if (length == 0) {
            return NO_ENTRIES;
        }
        ClasspathEntry[] result = new ClasspathEntry[length];
        int i = 0;
        while (i < length) {
            result[i] = new ClasspathEntry(this.getContentKind(), this.getEntryKind(), paths[i], this.inclusionPatterns, this.exclusionPatterns, null, null, this.getOutputLocation(), this, this.isExported, this.getAccessRules(), this.combineAccessRules, NO_EXTRA_ATTRIBUTES);
            ++i;
        }
        return result;
    }

    public String rootID() {
        if (this.rootID == null) {
            switch (this.entryKind) {
                case 1: {
                    this.rootID = "[LIB]" + this.path;
                    break;
                }
                case 2: {
                    this.rootID = "[PRJ]" + this.path;
                    break;
                }
                case 3: {
                    this.rootID = "[SRC]" + this.path;
                    break;
                }
                case 4: {
                    this.rootID = "[VAR]" + this.path;
                    break;
                }
                case 5: {
                    this.rootID = "[CON]" + this.path;
                    break;
                }
                default: {
                    this.rootID = "";
                }
            }
        }
        return this.rootID;
    }

    public IClasspathEntry getResolvedEntry() {
        return JavaCore.getResolvedClasspathEntry(this);
    }

    public static IJavaModelStatus validateClasspath(IJavaProject javaProject, IClasspathEntry[] rawClasspath, IPath projectOutputLocation) {
        int kind;
        IPath entryPath;
        IClasspathEntry entry;
        IClasspathEntry resolvedEntry;
        IClasspathEntry[] classpath;
        IProject project = javaProject.getProject();
        IPath projectPath = project.getFullPath();
        String projectName = javaProject.getElementName();
        if (projectOutputLocation == null) {
            return new JavaModelStatus(970);
        }
        if (projectOutputLocation.isAbsolute()) {
            if (!projectPath.isPrefixOf(projectOutputLocation)) {
                return new JavaModelStatus(971, (IJavaElement)javaProject, projectOutputLocation.toString());
            }
        } else {
            return new JavaModelStatus(972, projectOutputLocation);
        }
        boolean hasSource = false;
        boolean hasLibFolder = false;
        if (rawClasspath == null) {
            return JavaModelStatus.VERIFIED_OK;
        }
        int rawLength = rawClasspath.length;
        HashSet<IPath> pathes = new HashSet<IPath>(rawLength);
        int i = 0;
        while (i < rawLength) {
            IPath entryPath2 = rawClasspath[i].getPath();
            if (!pathes.add(entryPath2)) {
                String entryPathMsg = projectName.equals(entryPath2.segment(0)) ? entryPath2.removeFirstSegments(1).toString() : entryPath2.makeRelative().toString();
                return new JavaModelStatus(977, Messages.bind(Messages.classpath_duplicateEntryPath, new String[]{entryPathMsg, projectName}));
            }
            ++i;
        }
        try {
            classpath = ((JavaProject)javaProject).resolveClasspath((IClasspathEntry[])rawClasspath, (boolean)false, (boolean)false).resolvedClasspath;
        }
        catch (JavaModelException e) {
            return e.getJavaModelStatus();
        }
        int length = classpath.length;
        int outputCount = 1;
        IPath[] outputLocations = new IPath[length + 1];
        boolean[] allowNestingInOutputLocations = new boolean[length + 1];
        outputLocations[0] = projectOutputLocation;
        IPath potentialNestedOutput = null;
        int sourceEntryCount = 0;
        boolean disableExclusionPatterns = "disabled".equals(javaProject.getOption("org.eclipse.jdt.core.classpath.exclusionPatterns", true));
        boolean disableCustomOutputLocations = "disabled".equals(javaProject.getOption("org.eclipse.jdt.core.classpath.multipleOutputLocations", true));
        int i2 = 0;
        while (i2 < length) {
            resolvedEntry = classpath[i2];
            if (disableExclusionPatterns && (resolvedEntry.getInclusionPatterns() != null && resolvedEntry.getInclusionPatterns().length > 0 || resolvedEntry.getExclusionPatterns() != null && resolvedEntry.getExclusionPatterns().length > 0)) {
                return new JavaModelStatus(1002, (IJavaElement)javaProject, resolvedEntry.getPath());
            }
            switch (resolvedEntry.getEntryKind()) {
                case 3: {
                    ++sourceEntryCount;
                    IPath customOutput = resolvedEntry.getOutputLocation();
                    if (customOutput == null) break;
                    if (disableCustomOutputLocations) {
                        return new JavaModelStatus(1003, (IJavaElement)javaProject, resolvedEntry.getPath());
                    }
                    if (customOutput.isAbsolute()) {
                        if (!javaProject.getPath().isPrefixOf(customOutput)) {
                            return new JavaModelStatus(971, (IJavaElement)javaProject, customOutput.toString());
                        }
                    } else {
                        return new JavaModelStatus(972, customOutput);
                    }
                    if (Util.indexOfMatchingPath(customOutput, outputLocations, outputCount) != -1) break;
                    outputLocations[outputCount++] = customOutput;
                }
            }
            ++i2;
        }
        i2 = 1;
        while (i2 < outputCount) {
            IPath customOutput = outputLocations[i2];
            int index = Util.indexOfEnclosingPath(customOutput, outputLocations, outputCount);
            if (index != -1 && index != i2) {
                if (index == 0) {
                    if (potentialNestedOutput == null) {
                        potentialNestedOutput = customOutput;
                    }
                } else {
                    return new JavaModelStatus(964, Messages.bind(Messages.classpath_cannotNestOutputInOutput, new String[]{customOutput.makeRelative().toString(), outputLocations[index].makeRelative().toString()}));
                }
            }
            ++i2;
        }
        if (sourceEntryCount <= outputCount - 1) {
            allowNestingInOutputLocations[0] = true;
        } else if (potentialNestedOutput != null) {
            return new JavaModelStatus(964, Messages.bind(Messages.classpath_cannotNestOutputInOutput, new String[]{potentialNestedOutput.makeRelative().toString(), outputLocations[0].makeRelative().toString()}));
        }
        i2 = 0;
        while (i2 < length) {
            resolvedEntry = classpath[i2];
            IPath path = resolvedEntry.getPath();
            switch (resolvedEntry.getEntryKind()) {
                case 3: {
                    hasSource = true;
                    int index = Util.indexOfMatchingPath(path, outputLocations, outputCount);
                    if (index == -1) break;
                    allowNestingInOutputLocations[index] = true;
                    break;
                }
                case 1: {
                    Object target = JavaModel.getTarget(path, false);
                    hasLibFolder |= target instanceof IContainer;
                    int index = Util.indexOfMatchingPath(path, outputLocations, outputCount);
                    if (index == -1) break;
                    allowNestingInOutputLocations[index] = true;
                }
            }
            ++i2;
        }
        if (!hasSource && !hasLibFolder) {
            i2 = 0;
            while (i2 < outputCount) {
                allowNestingInOutputLocations[i2] = true;
                ++i2;
            }
        }
        i2 = 0;
        while (i2 < length) {
            entry = classpath[i2];
            if (entry != null) {
                entryPath = entry.getPath();
                kind = entry.getEntryKind();
                if (entryPath.equals((Object)projectPath)) {
                    if (kind == 2) {
                        return new JavaModelStatus(979, Messages.bind(Messages.classpath_cannotReferToItself, entryPath.makeRelative().toString()));
                    }
                } else {
                    IPath currentOutput;
                    if (kind == 3 || kind == 1 && JavaModel.getTarget(entryPath, false) instanceof IContainer) {
                        int j = 0;
                        while (j < classpath.length) {
                            IClasspathEntry otherEntry = classpath[j];
                            if (otherEntry != null) {
                                int otherKind = otherEntry.getEntryKind();
                                IPath otherPath = otherEntry.getPath();
                                if (entry != otherEntry && (otherKind == 3 || otherKind == 1 && JavaModel.getTarget(otherPath, false) instanceof IContainer) && otherPath.isPrefixOf(entryPath) && !otherPath.equals((Object)entryPath)) {
                                    char[][] inclusionPatterns = ((ClasspathEntry)otherEntry).fullInclusionPatternChars();
                                    char[][] exclusionPatterns = ((ClasspathEntry)otherEntry).fullExclusionPatternChars();
                                    if (!Util.isExcluded(entryPath.append("*"), inclusionPatterns, exclusionPatterns, false)) {
                                        String exclusionPattern = entryPath.removeFirstSegments(otherPath.segmentCount()).segment(0);
                                        if (Util.isExcluded(entryPath, inclusionPatterns, exclusionPatterns, false)) {
                                            return new JavaModelStatus(964, Messages.bind(Messages.classpath_mustEndWithSlash, new String[]{exclusionPattern, entryPath.makeRelative().toString()}));
                                        }
                                        if (otherKind == 3) {
                                            exclusionPattern = String.valueOf(exclusionPattern) + '/';
                                            if (!disableExclusionPatterns) {
                                                return new JavaModelStatus(964, Messages.bind(Messages.classpath_cannotNestEntryInEntry, new String[]{entryPath.makeRelative().toString(), otherEntry.getPath().makeRelative().toString(), exclusionPattern}));
                                            }
                                            return new JavaModelStatus(964, Messages.bind(Messages.classpath_cannotNestEntryInEntryNoExclusion, new String[]{entryPath.makeRelative().toString(), otherEntry.getPath().makeRelative().toString(), exclusionPattern}));
                                        }
                                        return new JavaModelStatus(964, Messages.bind(Messages.classpath_cannotNestEntryInLibrary, new String[]{entryPath.makeRelative().toString(), otherEntry.getPath().makeRelative().toString()}));
                                    }
                                }
                            }
                            ++j;
                        }
                    }
                    char[][] inclusionPatterns = ((ClasspathEntry)entry).fullInclusionPatternChars();
                    char[][] exclusionPatterns = ((ClasspathEntry)entry).fullExclusionPatternChars();
                    int j = 0;
                    while (j < outputCount) {
                        currentOutput = outputLocations[j];
                        if (!(entryPath.equals((Object)currentOutput) || !entryPath.isPrefixOf(currentOutput) || kind == 3 && Util.isExcluded(currentOutput, inclusionPatterns, exclusionPatterns, true))) {
                            return new JavaModelStatus(964, Messages.bind(Messages.classpath_cannotNestOutputInEntry, new String[]{currentOutput.makeRelative().toString(), entryPath.makeRelative().toString()}));
                        }
                        ++j;
                    }
                    j = 0;
                    while (j < outputCount) {
                        if (!allowNestingInOutputLocations[j] && (currentOutput = outputLocations[j]).isPrefixOf(entryPath)) {
                            return new JavaModelStatus(964, Messages.bind(Messages.classpath_cannotNestEntryInOutput, new String[]{entryPath.makeRelative().toString(), currentOutput.makeRelative().toString()}));
                        }
                        ++j;
                    }
                }
            }
            ++i2;
        }
        i2 = 0;
        while (i2 < length) {
            entry = classpath[i2];
            if (entry != null) {
                IPath output;
                String entryPathMsg;
                entryPath = entry.getPath();
                kind = entry.getEntryKind();
                boolean isProjectRelative = projectName.equals(entryPath.segment(0));
                String string = entryPathMsg = isProjectRelative ? entryPath.removeFirstSegments(1).toString() : entryPath.makeRelative().toString();
                if (kind == 3 && (output = entry.getOutputLocation()) != null) {
                    int j = 0;
                    while (j < length) {
                        IClasspathEntry otherEntry = classpath[j];
                        if (otherEntry != entry) {
                            boolean opStartsWithProject = projectName.equals(otherEntry.getPath().segment(0));
                            String otherPathMsg = opStartsWithProject ? otherEntry.getPath().removeFirstSegments(1).toString() : otherEntry.getPath().makeRelative().toString();
                            switch (otherEntry.getEntryKind()) {
                                case 3: {
                                    if (!otherEntry.getPath().equals((Object)output)) break;
                                    return new JavaModelStatus(964, Messages.bind(Messages.classpath_cannotUseDistinctSourceFolderAsOutput, new String[]{entryPathMsg, otherPathMsg, projectName}));
                                }
                                case 1: {
                                    if (!otherEntry.getPath().equals((Object)output)) break;
                                    return new JavaModelStatus(964, Messages.bind(Messages.classpath_cannotUseLibraryAsOutput, new String[]{entryPathMsg, otherPathMsg, projectName}));
                                }
                            }
                        }
                        ++j;
                    }
                }
            }
            ++i2;
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public static IJavaModelStatus validateClasspathEntry(IJavaProject project, IClasspathEntry entry, boolean checkSourceAttachment, boolean referredByContainer) {
        IJavaModelStatus status = ClasspathEntry.validateClasspathEntry(project, entry, null, checkSourceAttachment, referredByContainer);
        int statusCode = status.getCode();
        if ((statusCode == 964 || statusCode == 963 || statusCode == 965 || statusCode == 979) && ((ClasspathEntry)entry).isOptional()) {
            return JavaModelStatus.VERIFIED_OK;
        }
        return status;
    }

    /*
     * Unable to fully structure code
     */
    private static IJavaModelStatus validateClasspathEntry(IJavaProject project, IClasspathEntry entry, IClasspathContainer entryContainer, boolean checkSourceAttachment, boolean referredByContainer) {
        path = entry.getPath();
        projectName = project.getElementName();
        entryPathMsg = projectName.equals(path.segment(0)) != false ? path.removeFirstSegments(1).makeRelative().toString() : path.toString();
        switch (entry.getEntryKind()) {
            case 5: {
                if (path.segmentCount() >= 1) {
                    try {
                        status = null;
                        extraAttributes = entry.getExtraAttributes();
                        if (extraAttributes != null) {
                            length = extraAttributes.length;
                            set = new HashSet<String>(length);
                            i = 0;
                            while (i < length) {
                                attName = extraAttributes[i].getName();
                                if (!set.add(attName)) {
                                    status = new JavaModelStatus(977, Messages.bind(Messages.classpath_duplicateEntryExtraAttribute, new String[]{attName, entryPathMsg, projectName}));
                                    break;
                                }
                                ++i;
                            }
                        }
                        if ((container = JavaModelManager.getJavaModelManager().getClasspathContainer(path, project)) == null) {
                            if (status != null) {
                                return status;
                            }
                            return new JavaModelStatus(963, (IJavaElement)project, path);
                        }
                        if (container == JavaModelManager.CONTAINER_INITIALIZATION_IN_PROGRESS) {
                            return JavaModelStatus.VERIFIED_OK;
                        }
                        containerEntries = container.getClasspathEntries();
                        if (containerEntries == null) break;
                        i = 0;
                        length = containerEntries.length;
                        while (i < length) {
                            containerEntry = containerEntries[i];
                            v0 = kind = containerEntry == null ? 0 : containerEntry.getEntryKind();
                            if (containerEntry == null || kind == 3 || kind == 4 || kind == 5) {
                                return new JavaModelStatus(962, (IJavaElement)project, path);
                            }
                            containerEntryStatus = ClasspathEntry.validateClasspathEntry(project, containerEntry, container, checkSourceAttachment, true);
                            if (!containerEntryStatus.isOK()) {
                                return containerEntryStatus;
                            }
                            ++i;
                        }
                        break;
                    }
                    catch (JavaModelException e) {
                        return new JavaModelStatus(e);
                    }
                }
                return new JavaModelStatus(964, Messages.bind(Messages.classpath_illegalContainerPath, new String[]{entryPathMsg, projectName}));
            }
            case 4: {
                if (path.segmentCount() >= 1) {
                    try {
                        entry = JavaCore.getResolvedClasspathEntry(entry);
                    }
                    catch (AssertionFailedException e) {
                        return new JavaModelStatus(979, e.getMessage());
                    }
                    if (entry == null) {
                        return new JavaModelStatus(965, (IJavaElement)project, path);
                    }
                    status = ClasspathEntry.validateClasspathEntry(project, entry, null, checkSourceAttachment, false);
                    if (!status.isOK()) {
                        return status;
                    }
                    variableName = path.segment(0);
                    deprecatedMessage = JavaCore.getClasspathVariableDeprecationMessage(variableName);
                    if (deprecatedMessage != null) {
                        return new JavaModelStatus(2, 1010, project, path, deprecatedMessage);
                    }
                    return status;
                }
                return new JavaModelStatus(964, Messages.bind(Messages.classpath_illegalVariablePath, new String[]{entryPathMsg, projectName}));
            }
            case 1: {
                path = ClasspathEntry.resolveDotDot(project.getProject().getLocation(), path);
                containerInfo = null;
                if (entryContainer != null) {
                    containerInfo = entryContainer instanceof UserLibraryClasspathContainer != false ? Messages.bind(Messages.classpath_userLibraryInfo, new String[]{entryContainer.getDescription()}) : Messages.bind(Messages.classpath_containerInfo, new String[]{entryContainer.getDescription()});
                }
                if ((status = ClasspathEntry.validateLibraryEntry(path, project, containerInfo, checkSourceAttachment != false ? entry.getSourceAttachmentPath() : null, entryPathMsg)).getCode() == 964 && ((ClasspathEntry)entry).isOptional()) {
                    status = JavaModelStatus.VERIFIED_OK;
                }
                if (status.isOK()) break;
                return status;
            }
            case 2: {
                if (path.isAbsolute() && path.segmentCount() == 1) {
                    prereqProjectRsc = ClasspathEntry.workspaceRoot.getProject(path.segment(0));
                    prereqProject = JavaCore.create(prereqProjectRsc);
                    try {
                        if (!prereqProjectRsc.exists() || !prereqProjectRsc.hasNature("org.eclipse.jdt.core.javanature")) {
                            return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundProject, new String[]{path.segment(0), projectName}));
                        }
                        if (!prereqProjectRsc.isOpen()) {
                            return new JavaModelStatus(964, Messages.bind(Messages.classpath_closedProject, new String[]{path.segment(0)}));
                        }
                        if ("ignore".equals(project.getOption("org.eclipse.jdt.core.incompatibleJDKLevel", true))) ** break;
                        projectTargetJDK = CompilerOptions.versionToJdkLevel(project.getOption("org.eclipse.jdt.core.compiler.codegen.targetPlatform", true));
                        prereqProjectTargetJDK = CompilerOptions.versionToJdkLevel(prereqProject.getOption("org.eclipse.jdt.core.compiler.codegen.targetPlatform", true));
                        if (prereqProjectTargetJDK <= projectTargetJDK) ** break;
                        return new JavaModelStatus(1004, project, path, Messages.bind(Messages.classpath_incompatibleLibraryJDKLevel, new String[]{project.getElementName(), CompilerOptions.versionFromJdkLevel(projectTargetJDK), path.makeRelative().toString(), CompilerOptions.versionFromJdkLevel(prereqProjectTargetJDK)}));
                        break;
                    }
                    catch (CoreException v1) {
                        return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundProject, new String[]{path.segment(0), projectName}));
                    }
                }
                return new JavaModelStatus(964, Messages.bind(Messages.classpath_illegalProjectPath, new String[]{path.toString(), projectName}));
            }
            case 3: {
                if ((entry.getInclusionPatterns() != null && entry.getInclusionPatterns().length > 0 || entry.getExclusionPatterns() != null && entry.getExclusionPatterns().length > 0) && "disabled".equals(project.getOption("org.eclipse.jdt.core.classpath.exclusionPatterns", true))) {
                    return new JavaModelStatus(1002, (IJavaElement)project, path);
                }
                if (entry.getOutputLocation() != null && "disabled".equals(project.getOption("org.eclipse.jdt.core.classpath.multipleOutputLocations", true))) {
                    return new JavaModelStatus(1003, (IJavaElement)project, path);
                }
                if (path.isAbsolute() && !path.isEmpty()) {
                    projectPath = project.getProject().getFullPath();
                    if (projectPath.isPrefixOf(path) && JavaModel.getTarget(path, true) != null) break;
                    return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundSourceFolder, new String[]{entryPathMsg, projectName}));
                }
                return new JavaModelStatus(964, Messages.bind(Messages.classpath_illegalSourceFolderPath, new String[]{entryPathMsg, projectName}));
            }
        }
        extraAttributes = entry.getExtraAttributes();
        if (extraAttributes != null) {
            length = extraAttributes.length;
            set = new HashSet<String>(length);
            i = 0;
            while (i < length) {
                attName = extraAttributes[i].getName();
                if (!set.add(attName)) {
                    return new JavaModelStatus(977, Messages.bind(Messages.classpath_duplicateEntryExtraAttribute, new String[]{attName, entryPathMsg, projectName}));
                }
                ++i;
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static IJavaModelStatus validateLibraryEntry(IPath path, IJavaProject project, String container, IPath sourceAttachment, String entryPathMsg) {
        if (path.isAbsolute() && !path.isEmpty()) {
            boolean isExternal;
            IPath workspaceLocation;
            Object target = JavaModel.getTarget(path, true);
            if (target == null && (workspaceLocation = workspaceRoot.getLocation()).isPrefixOf(path)) {
                target = JavaModel.getTarget(path.makeRelativeTo(workspaceLocation).makeAbsolute(), true);
            }
            if (target != null && !"ignore".equals(project.getOption("org.eclipse.jdt.core.incompatibleJDKLevel", true))) {
                long projectTargetJDK = CompilerOptions.versionToJdkLevel(project.getOption("org.eclipse.jdt.core.compiler.codegen.targetPlatform", true));
                long libraryJDK = Util.getJdkLevel(target);
                if (libraryJDK != 0L && libraryJDK > projectTargetJDK) {
                    if (container != null) {
                        return new JavaModelStatus(1004, project, path, Messages.bind(Messages.classpath_incompatibleLibraryJDKLevelInContainer, new String[]{project.getElementName(), CompilerOptions.versionFromJdkLevel(projectTargetJDK), path.makeRelative().toString(), container, CompilerOptions.versionFromJdkLevel(libraryJDK)}));
                    }
                    return new JavaModelStatus(1004, project, path, Messages.bind(Messages.classpath_incompatibleLibraryJDKLevel, new String[]{project.getElementName(), CompilerOptions.versionFromJdkLevel(projectTargetJDK), path.makeRelative().toString(), CompilerOptions.versionFromJdkLevel(libraryJDK)}));
                }
            }
            if (target instanceof IResource) {
                IResource resolvedResource = (IResource)target;
                switch (resolvedResource.getType()) {
                    case 1: {
                        if (sourceAttachment != null && !sourceAttachment.isEmpty() && JavaModel.getTarget(sourceAttachment, true) == null) {
                            if (container != null) {
                                return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundSourceAttachmentInContainedLibrary, new String[]{sourceAttachment.toString(), path.toString(), container}));
                            }
                            return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundSourceAttachment, new String[]{sourceAttachment.toString(), path.toString(), project.getElementName()}));
                        }
                        IJavaModelStatus status = ClasspathEntry.validateLibraryContents(path, project, entryPathMsg);
                        if (status == JavaModelStatus.VERIFIED_OK) return JavaModelStatus.VERIFIED_OK;
                        return status;
                    }
                    case 2: {
                        if (sourceAttachment == null) return JavaModelStatus.VERIFIED_OK;
                        if (sourceAttachment.isEmpty()) return JavaModelStatus.VERIFIED_OK;
                        if (JavaModel.getTarget(sourceAttachment, true) != null) return JavaModelStatus.VERIFIED_OK;
                        if (container != null) {
                            return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundSourceAttachmentInContainedLibrary, new String[]{sourceAttachment.toString(), path.toString(), container}));
                        }
                        return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundSourceAttachment, new String[]{sourceAttachment.toString(), path.toString(), project.getElementName()}));
                    }
                }
                return JavaModelStatus.VERIFIED_OK;
            }
            if (target instanceof File) {
                File file = JavaModel.getFile(target);
                if (file == null) {
                    if (container != null) {
                        return new JavaModelStatus(964, Messages.bind(Messages.classpath_illegalExternalFolderInContainer, new String[]{path.toOSString(), container}));
                    }
                    return new JavaModelStatus(964, Messages.bind(Messages.classpath_illegalExternalFolder, new String[]{path.toOSString(), project.getElementName()}));
                }
                if (sourceAttachment != null && !sourceAttachment.isEmpty() && JavaModel.getTarget(sourceAttachment, true) == null) {
                    if (container != null) {
                        return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundSourceAttachmentInContainedLibrary, new String[]{sourceAttachment.toString(), path.toOSString(), container}));
                    }
                    return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundSourceAttachment, new String[]{sourceAttachment.toString(), path.toOSString(), project.getElementName()}));
                }
                if (!file.isFile()) return JavaModelStatus.VERIFIED_OK;
                IJavaModelStatus status = ClasspathEntry.validateLibraryContents(path, project, entryPathMsg);
                if (status == JavaModelStatus.VERIFIED_OK) return JavaModelStatus.VERIFIED_OK;
                return status;
            }
            boolean bl = isExternal = path.getDevice() != null || !ResourcesPlugin.getWorkspace().getRoot().getProject(path.segment(0)).exists();
            if (isExternal) {
                if (container != null) {
                    return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundLibraryInContainer, new String[]{path.toOSString(), container}));
                }
                return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundLibrary, new String[]{path.toOSString(), project.getElementName()}));
            }
            if (entryPathMsg == null) {
                String string = entryPathMsg = project.getElementName().equals(path.segment(0)) ? path.removeFirstSegments(1).makeRelative().toString() : path.toString();
            }
            if (container != null) {
                return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundLibraryInContainer, new String[]{entryPathMsg, container}));
            }
            return new JavaModelStatus(964, Messages.bind(Messages.classpath_unboundLibrary, new String[]{entryPathMsg, project.getElementName()}));
        }
        if (entryPathMsg == null) {
            String string = entryPathMsg = project.getElementName().equals(path.segment(0)) ? path.removeFirstSegments(1).makeRelative().toString() : path.toString();
        }
        if (container != null) {
            return new JavaModelStatus(964, Messages.bind(Messages.classpath_illegalLibraryPathInContainer, new String[]{entryPathMsg, container}));
        }
        return new JavaModelStatus(964, Messages.bind(Messages.classpath_illegalLibraryPath, new String[]{entryPathMsg, project.getElementName()}));
    }

    private static IJavaModelStatus validateLibraryContents(IPath path, IJavaProject project, String entryPathMsg) {
        block2: {
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            try {
                manager.verifyArchiveContent(path);
            }
            catch (CoreException e) {
                if (e.getStatus().getMessage() != Messages.status_IOException) break block2;
                return new JavaModelStatus(964, Messages.bind(Messages.classpath_archiveReadError, new String[]{entryPathMsg, project.getElementName()}));
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public static class AssertionFailedException
    extends RuntimeException {
        private static final long serialVersionUID = -171699380721189572L;

        public AssertionFailedException(String message) {
            super(message);
        }
    }

    static class UnknownXmlElements {
        String[] attributes;
        ArrayList children;

        UnknownXmlElements() {
        }
    }
}

