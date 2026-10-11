/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.XMLWriter;
import org.eclipse.jdt.internal.core.util.Messages;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class UserLibrary {
    private static final String VERSION_ONE = "1";
    private static final String CURRENT_VERSION = "2";
    private static final String TAG_VERSION = "version";
    private static final String TAG_USERLIBRARY = "userlibrary";
    private static final String TAG_SOURCEATTACHMENT = "sourceattachment";
    private static final String TAG_SOURCEATTACHMENTROOT = "sourceattachmentroot";
    private static final String TAG_PATH = "path";
    private static final String TAG_ARCHIVE = "archive";
    private static final String TAG_SYSTEMLIBRARY = "systemlibrary";
    private boolean isSystemLibrary;
    private IClasspathEntry[] entries;

    public UserLibrary(IClasspathEntry[] entries, boolean isSystemLibrary) {
        Assert.isNotNull((Object)entries);
        this.entries = entries;
        this.isSystemLibrary = isSystemLibrary;
    }

    public IClasspathEntry[] getEntries() {
        return this.entries;
    }

    public boolean isSystemLibrary() {
        return this.isSystemLibrary;
    }

    public boolean equals(Object obj) {
        if (obj != null && obj.getClass() == this.getClass()) {
            UserLibrary other = (UserLibrary)obj;
            if (this.entries.length == other.entries.length && this.isSystemLibrary == other.isSystemLibrary) {
                int i = 0;
                while (i < this.entries.length) {
                    if (!this.entries[i].equals(other.entries[i])) {
                        return false;
                    }
                    ++i;
                }
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = 0;
        if (this.isSystemLibrary) {
            ++hashCode;
        }
        int i = 0;
        while (i < this.entries.length) {
            hashCode = hashCode * 17 + this.entries.hashCode();
            ++i;
        }
        return hashCode;
    }

    public static String serialize(IClasspathEntry[] entries, boolean isSystemLibrary) throws IOException {
        ByteArrayOutputStream s = new ByteArrayOutputStream();
        OutputStreamWriter writer = new OutputStreamWriter((OutputStream)s, "UTF8");
        XMLWriter xmlWriter = new XMLWriter((Writer)writer, null, true);
        HashMap<String, String> library = new HashMap<String, String>();
        library.put(TAG_VERSION, String.valueOf(CURRENT_VERSION));
        library.put(TAG_SYSTEMLIBRARY, String.valueOf(isSystemLibrary));
        xmlWriter.printTag(TAG_USERLIBRARY, library, true, true, false);
        int i = 0;
        int length = entries.length;
        while (i < length) {
            IPath sourceAttachRoot;
            ClasspathEntry cpEntry = (ClasspathEntry)entries[i];
            HashMap<String, String> archive = new HashMap<String, String>();
            archive.put(TAG_PATH, cpEntry.getPath().toPortableString());
            IPath sourceAttach = cpEntry.getSourceAttachmentPath();
            if (sourceAttach != null) {
                archive.put(TAG_SOURCEATTACHMENT, sourceAttach.toPortableString());
            }
            if ((sourceAttachRoot = cpEntry.getSourceAttachmentRootPath()) != null) {
                archive.put(TAG_SOURCEATTACHMENTROOT, sourceAttachRoot.toPortableString());
            }
            boolean hasExtraAttributes = cpEntry.extraAttributes != null && cpEntry.extraAttributes.length != 0;
            boolean hasRestrictions = cpEntry.getAccessRuleSet() != null;
            xmlWriter.printTag(TAG_ARCHIVE, archive, true, true, !hasExtraAttributes && !hasRestrictions);
            if (hasExtraAttributes) {
                cpEntry.encodeExtraAttributes(xmlWriter, true, true);
            }
            if (hasRestrictions) {
                cpEntry.encodeAccessRules(xmlWriter, true, true);
            }
            if (hasExtraAttributes || hasRestrictions) {
                xmlWriter.endTag(TAG_ARCHIVE, true, true);
            }
            ++i;
        }
        xmlWriter.endTag(TAG_USERLIBRARY, true, true);
        writer.flush();
        writer.close();
        return s.toString("UTF8");
    }

    public static UserLibrary createFromString(Reader reader) throws IOException {
        Element cpElement;
        try {
            try {
                DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                cpElement = parser.parse(new InputSource(reader)).getDocumentElement();
            }
            catch (SAXException sAXException) {
                throw new IOException(Messages.file_badFormat);
            }
            catch (ParserConfigurationException parserConfigurationException) {
                throw new IOException(Messages.file_badFormat);
            }
        }
        finally {
            reader.close();
        }
        if (!cpElement.getNodeName().equalsIgnoreCase(TAG_USERLIBRARY)) {
            throw new IOException(Messages.file_badFormat);
        }
        String version = cpElement.getAttribute(TAG_VERSION);
        boolean isSystem = Boolean.valueOf(cpElement.getAttribute(TAG_SYSTEMLIBRARY));
        NodeList list = cpElement.getChildNodes();
        int length = list.getLength();
        ArrayList<IClasspathEntry> res = new ArrayList<IClasspathEntry>(length);
        int i = 0;
        while (i < length) {
            Element element;
            Node node = list.item(i);
            if (node.getNodeType() == 1 && (element = (Element)node).getNodeName().equals(TAG_ARCHIVE)) {
                String pathString = element.getAttribute(TAG_PATH);
                String sourceAttachString = element.hasAttribute(TAG_SOURCEATTACHMENT) ? element.getAttribute(TAG_SOURCEATTACHMENT) : null;
                String sourceAttachRootString = element.hasAttribute(TAG_SOURCEATTACHMENTROOT) ? element.getAttribute(TAG_SOURCEATTACHMENTROOT) : null;
                IPath entryPath = null;
                IPath sourceAttachPath = null;
                IPath sourceAttachRootPath = null;
                if (version.equals(VERSION_ONE)) {
                    entryPath = Path.fromOSString((String)pathString);
                    if (sourceAttachString != null) {
                        sourceAttachPath = Path.fromOSString((String)sourceAttachString);
                    }
                    if (sourceAttachRootString != null) {
                        sourceAttachRootPath = Path.fromOSString((String)sourceAttachRootString);
                    }
                } else {
                    entryPath = Path.fromPortableString((String)pathString);
                    if (sourceAttachString != null) {
                        sourceAttachPath = Path.fromPortableString((String)sourceAttachString);
                    }
                    if (sourceAttachRootString != null) {
                        sourceAttachRootPath = Path.fromPortableString((String)sourceAttachRootString);
                    }
                }
                NodeList children = element.getElementsByTagName("*");
                boolean[] foundChildren = new boolean[children.getLength()];
                NodeList attributeList = ClasspathEntry.getChildAttributes("attributes", children, foundChildren);
                IClasspathAttribute[] extraAttributes = ClasspathEntry.decodeExtraAttributes(attributeList);
                attributeList = ClasspathEntry.getChildAttributes("accessrules", children, foundChildren);
                IAccessRule[] accessRules = ClasspathEntry.decodeAccessRules(attributeList);
                IClasspathEntry entry = JavaCore.newLibraryEntry(entryPath, sourceAttachPath, sourceAttachRootPath, accessRules, extraAttributes, false);
                res.add(entry);
            }
            ++i;
        }
        IClasspathEntry[] entries = res.toArray(new IClasspathEntry[res.size()]);
        return new UserLibrary(entries, isSystem);
    }

    public String toString() {
        if (this.entries == null) {
            return "null";
        }
        StringBuffer buffer = new StringBuffer();
        int length = this.entries.length;
        int i = 0;
        while (i < length) {
            buffer.append(String.valueOf(this.entries[i].toString()) + '\n');
            ++i;
        }
        return buffer.toString();
    }
}

