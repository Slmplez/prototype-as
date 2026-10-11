/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.internal.localstore.SafeFileInputStream;
import org.eclipse.core.internal.resources.IModelObjectConstants;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.WorkspaceDescription;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.runtime.IPath;
import org.eclipse.osgi.util.NLS;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class WorkspaceDescriptionReader
implements IModelObjectConstants {
    protected static final String[] EMPTY_STRING_ARRAY = new String[0];

    protected String getString(Node target, String tagName) {
        Node node = this.searchNode(target, tagName);
        return node != null ? (node.getFirstChild() == null ? null : node.getFirstChild().getNodeValue()) : null;
    }

    protected String[] getStrings(Node target) {
        if (target == null) {
            return null;
        }
        NodeList list = target.getChildNodes();
        if (list.getLength() == 0) {
            return EMPTY_STRING_ARRAY;
        }
        ArrayList<Object> result = new ArrayList<Object>(list.getLength());
        int i = 0;
        while (i < list.getLength()) {
            Node node = list.item(i);
            if (node.getNodeType() == 1) {
                result.add(this.read(node.getChildNodes().item(0)));
            }
            ++i;
        }
        return result.toArray(new String[result.size()]);
    }

    private void logNumberFormatException(String value, NumberFormatException e) {
        String msg = NLS.bind((String)Messages.resources_readWorkspaceMetaValue, (Object)value);
        Policy.log(new ResourceStatus(567, null, msg, e));
    }

    public Object read(InputStream input) {
        try {
            DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            Document document = parser.parse(input);
            return this.read(document.getFirstChild());
        }
        catch (IOException iOException) {
        }
        catch (SAXException sAXException) {
        }
        catch (ParserConfigurationException parserConfigurationException) {}
        return null;
    }

    public Object read(IPath location, IPath tempLocation) throws IOException {
        SafeFileInputStream file = new SafeFileInputStream(location.toOSString(), tempLocation.toOSString());
        try {
            Object object = this.read(file);
            return object;
        }
        finally {
            file.close();
        }
    }

    protected Object read(Node node) {
        if (node == null) {
            return null;
        }
        switch (node.getNodeType()) {
            case 1: {
                if (node.getNodeName().equals("workspaceDescription")) {
                    return this.readWorkspaceDescription(node);
                }
            }
            case 3: {
                String value = node.getNodeValue();
                return value == null ? null : value.trim();
            }
        }
        return node.toString();
    }

    protected WorkspaceDescription readWorkspaceDescription(Node node) {
        String name = this.getString(node, "name");
        String autobuild = this.getString(node, "autobuild");
        String snapshotInterval = this.getString(node, "snapshotInterval");
        String applyFileStatePolicy = this.getString(node, "applyFileStatePolicy");
        String fileStateLongevity = this.getString(node, "fileStateLongevity");
        String maxFileStateSize = this.getString(node, "maxFileStateSize");
        String maxFileStates = this.getString(node, "maxFileStates");
        String[] buildOrder = this.getStrings(this.searchNode(node, "buildOrder"));
        WorkspaceDescription description = new WorkspaceDescription(name);
        if (autobuild != null) {
            description.setAutoBuilding(!autobuild.equals(Integer.toString(0)));
        }
        if (applyFileStatePolicy != null) {
            description.setApplyFileStatePolicy(!applyFileStatePolicy.equals(Integer.toString(0)));
        }
        try {
            if (fileStateLongevity != null) {
                description.setFileStateLongevity(Long.parseLong(fileStateLongevity));
            }
        }
        catch (NumberFormatException e) {
            this.logNumberFormatException(fileStateLongevity, e);
        }
        try {
            if (maxFileStateSize != null) {
                description.setMaxFileStateSize(Long.parseLong(maxFileStateSize));
            }
        }
        catch (NumberFormatException e) {
            this.logNumberFormatException(maxFileStateSize, e);
        }
        try {
            if (maxFileStates != null) {
                description.setMaxFileStates(Integer.parseInt(maxFileStates));
            }
        }
        catch (NumberFormatException e) {
            this.logNumberFormatException(maxFileStates, e);
        }
        if (buildOrder != null) {
            description.internalSetBuildOrder(buildOrder);
        }
        try {
            if (snapshotInterval != null) {
                description.setSnapshotInterval(Long.parseLong(snapshotInterval));
            }
        }
        catch (NumberFormatException e) {
            this.logNumberFormatException(snapshotInterval, e);
        }
        return description;
    }

    protected Node searchNode(Node target, String tagName) {
        NodeList list = target.getChildNodes();
        int i = 0;
        while (i < list.getLength()) {
            if (list.item(i).getNodeName().equals(tagName)) {
                return list.item(i);
            }
            ++i;
        }
        return null;
    }
}

