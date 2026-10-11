/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.pde.internal.core.schema;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Vector;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.core.IModelChangedListener;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.XMLDefaultHandler;
import org.eclipse.pde.internal.core.ischema.IDocumentSection;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaAttribute;
import org.eclipse.pde.internal.core.ischema.ISchemaComplexType;
import org.eclipse.pde.internal.core.ischema.ISchemaCompositor;
import org.eclipse.pde.internal.core.ischema.ISchemaDescriptor;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaEnumeration;
import org.eclipse.pde.internal.core.ischema.ISchemaInclude;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaObjectReference;
import org.eclipse.pde.internal.core.ischema.ISchemaRootElement;
import org.eclipse.pde.internal.core.ischema.ISchemaSimpleType;
import org.eclipse.pde.internal.core.ischema.ISchemaType;
import org.eclipse.pde.internal.core.schema.ChoiceRestriction;
import org.eclipse.pde.internal.core.schema.DocumentSection;
import org.eclipse.pde.internal.core.schema.SchemaAttribute;
import org.eclipse.pde.internal.core.schema.SchemaComplexType;
import org.eclipse.pde.internal.core.schema.SchemaCompositor;
import org.eclipse.pde.internal.core.schema.SchemaElement;
import org.eclipse.pde.internal.core.schema.SchemaElementReference;
import org.eclipse.pde.internal.core.schema.SchemaEnumeration;
import org.eclipse.pde.internal.core.schema.SchemaInclude;
import org.eclipse.pde.internal.core.schema.SchemaRootElement;
import org.eclipse.pde.internal.core.schema.SchemaSimpleType;
import org.eclipse.pde.internal.core.schema.SchemaType;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;
import org.eclipse.pde.internal.core.util.SAXParserWrapper;
import org.eclipse.pde.internal.core.util.SchemaUtil;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class Schema
extends PlatformObject
implements ISchema {
    private URL fURL;
    private ListenerList fListeners = new ListenerList();
    private Vector fElements = new Vector();
    private Vector fDocSections = new Vector();
    private Vector fIncludes;
    private String fPointID;
    private String fPluginID;
    private ISchemaDescriptor fSchemaDescriptor;
    private boolean fLoaded;
    private Vector fReferences;
    private String fDescription;
    private double fTargetVersion;
    private String fName = "";
    private boolean fNotificationEnabled;
    public static final String INDENT = "   ";
    private boolean fDisposed;
    private boolean fValid;
    private boolean fAbbreviated;
    static /* synthetic */ Class class$0;

    public Schema(String pluginId, String pointId, String name, boolean abbreviated) {
        this.fPluginID = pluginId;
        this.fPointID = pointId;
        this.fName = name;
        this.fAbbreviated = abbreviated;
    }

    public Schema(ISchemaDescriptor schemaDescriptor, URL url, boolean abbreviated) {
        this.fSchemaDescriptor = schemaDescriptor;
        this.fURL = url;
        this.fAbbreviated = abbreviated;
    }

    public void addDocumentSection(IDocumentSection docSection) {
        this.fDocSections.addElement(docSection);
        this.fireModelChanged(new ModelChangedEvent(this, 1, new Object[]{docSection}, null));
    }

    public void addElement(ISchemaElement element) {
        this.addElement(element, null);
    }

    public void addElement(ISchemaElement element, ISchemaElement afterElement) {
        int index = -1;
        if (afterElement != null) {
            index = this.fElements.indexOf(afterElement);
        }
        if (index != -1) {
            this.fElements.add(index + 1, element);
        } else {
            this.fElements.add(element);
        }
        this.fireModelChanged(new ModelChangedEvent(this, 1, new Object[]{element}, null));
    }

    public void addInclude(ISchemaInclude include) {
        if (this.fIncludes == null) {
            this.fIncludes = new Vector();
        }
        this.fIncludes.add(include);
        this.fireModelChanged(new ModelChangedEvent(this, 1, new Object[]{include}, null));
    }

    public void removeInclude(ISchemaInclude include) {
        if (this.fIncludes == null) {
            return;
        }
        this.fIncludes.remove(include);
        this.fireModelChanged(new ModelChangedEvent(this, 2, new Object[]{include}, null));
    }

    public void addModelChangedListener(IModelChangedListener listener) {
        this.fListeners.add((Object)listener);
    }

    private void collectElements(ISchemaCompositor compositor, Vector result) {
        ISchemaObject[] children = compositor.getChildren();
        int i = 0;
        while (i < children.length) {
            ISchemaObjectReference ref;
            ISchemaObject referenced;
            ISchemaObject child = children[i];
            if (child instanceof ISchemaCompositor) {
                this.collectElements((ISchemaCompositor)child, result);
            } else if (child instanceof ISchemaObjectReference && (referenced = (ref = (ISchemaObjectReference)((Object)child)).getReferencedObject()) instanceof ISchemaElement) {
                result.addElement(referenced);
            }
            ++i;
        }
    }

    public void dispose() {
        if (this.fIncludes != null) {
            int i = 0;
            while (i < this.fIncludes.size()) {
                ISchemaInclude include = (ISchemaInclude)this.fIncludes.get(i);
                include.dispose();
                ++i;
            }
        }
        this.reset();
        this.fDisposed = true;
    }

    public ISchemaElement findElement(String name) {
        if (!this.isLoaded()) {
            this.load();
        }
        int i = 0;
        while (i < this.fElements.size()) {
            ISchemaElement element = (ISchemaElement)this.fElements.elementAt(i);
            if (element.getName().equals(name)) {
                return element;
            }
            ++i;
        }
        if (this.fIncludes != null) {
            i = 0;
            while (i < this.fIncludes.size()) {
                ISchemaElement element;
                ISchemaInclude include = (ISchemaInclude)this.fIncludes.get(i);
                ISchema ischema = include.getIncludedSchema();
                if (ischema != null && (element = ischema.findElement(name)) != null) {
                    return element;
                }
                ++i;
            }
        }
        return null;
    }

    public void fireModelChanged(IModelChangedEvent event) {
        if (!this.fNotificationEnabled) {
            return;
        }
        Object[] listeners = this.fListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IModelChangedListener)listeners[i]).modelChanged(event);
            ++i;
        }
    }

    public void fireModelObjectChanged(Object object, String property, Object oldValue, Object newValue) {
        this.fireModelChanged(new ModelChangedEvent(this, object, property, oldValue, newValue));
    }

    private String getAttribute(Node node, String name) {
        String value;
        NamedNodeMap map = node.getAttributes();
        Node attNode = map.getNamedItem(name);
        if (attNode != null && (value = attNode.getNodeValue()).length() > 0) {
            return value;
        }
        return null;
    }

    public ISchemaElement[] getCandidateChildren(ISchemaElement element) {
        ISchemaCompositor compositor;
        Vector candidates = new Vector();
        ISchemaType type = element.getType();
        if (type instanceof ISchemaComplexType && (compositor = ((ISchemaComplexType)type).getCompositor()) != null) {
            this.collectElements(compositor, candidates);
        }
        Object[] result = new ISchemaElement[candidates.size()];
        candidates.copyInto(result);
        return result;
    }

    public String getDescription() {
        return this.fDescription;
    }

    public boolean isValid() {
        return this.fValid;
    }

    public IDocumentSection[] getDocumentSections() {
        Object[] result = new IDocumentSection[this.fDocSections.size()];
        this.fDocSections.copyInto(result);
        return result;
    }

    public int getElementCount() {
        return this.fElements.size();
    }

    public int getResolvedElementCount() {
        int localCount = this.getElementCount();
        if (this.fIncludes == null) {
            return localCount;
        }
        int totalCount = localCount;
        int i = 0;
        while (i < this.fIncludes.size()) {
            ISchemaInclude include = (ISchemaInclude)this.fIncludes.get(i);
            ISchema schema = include.getIncludedSchema();
            if (schema != null) {
                totalCount += schema.getResolvedElementCount();
            }
            ++i;
        }
        return totalCount;
    }

    public ISchemaElement[] getElements() {
        if (!this.isLoaded()) {
            this.load();
        }
        Object[] result = new ISchemaElement[this.fElements.size()];
        this.fElements.copyInto(result);
        return result;
    }

    public String[] getElementNames() {
        ISchemaElement[] elements = this.getElements();
        String[] names = new String[elements.length];
        int i = 0;
        while (i < elements.length) {
            names[i] = elements[i].getName();
            ++i;
        }
        return names;
    }

    public ISchemaElement[] getResolvedElements() {
        if (this.fIncludes == null) {
            return this.getElements();
        }
        if (!this.isLoaded()) {
            this.load();
        }
        Vector result = (Vector)this.fElements.clone();
        int i = 0;
        while (i < this.fIncludes.size()) {
            ISchemaInclude include = (ISchemaInclude)this.fIncludes.get(i);
            ISchema schema = include.getIncludedSchema();
            if (schema != null) {
                ISchemaElement[] ielements = schema.getElements();
                int j = 0;
                while (j < ielements.length) {
                    result.add(ielements[j]);
                    ++j;
                }
            }
            ++i;
        }
        return result.toArray(new ISchemaElement[result.size()]);
    }

    public ISchemaInclude[] getIncludes() {
        if (this.fIncludes == null) {
            return new ISchemaInclude[0];
        }
        return this.fIncludes.toArray(new ISchemaInclude[this.fIncludes.size()]);
    }

    public String getName() {
        return this.fName;
    }

    private String getNormalizedText(String source) {
        if (source == null) {
            return "";
        }
        String result = source.replace('\t', ' ');
        result = result.trim();
        return result;
    }

    public ISchemaObject getParent() {
        return null;
    }

    public void setParent(ISchemaObject obj) {
    }

    public ISchemaElement getElementAt(int index) {
        return (ISchemaElement)this.fElements.get(index);
    }

    public String getQualifiedPointId() {
        return String.valueOf(this.fPluginID) + "." + this.fPointID;
    }

    public String getPluginId() {
        return this.fPluginID;
    }

    public String getPointId() {
        return this.fPointID;
    }

    public ISchema getSchema() {
        return this;
    }

    public ISchemaDescriptor getSchemaDescriptor() {
        return this.fSchemaDescriptor;
    }

    public URL getURL() {
        return this.fURL;
    }

    public int indexOf(Object obj) {
        return this.fElements.indexOf(obj);
    }

    public boolean isDisposed() {
        return this.fDisposed;
    }

    public boolean isEditable() {
        return false;
    }

    public boolean isLoaded() {
        return this.fLoaded;
    }

    public boolean isNotificationEnabled() {
        return this.fNotificationEnabled;
    }

    public void load() {
        block22: {
            URLConnection connection = null;
            InputStream input = null;
            try {
                connection = SchemaUtil.getURLConnection(this.fURL);
                input = connection.getInputStream();
                this.load(input);
            }
            catch (FileNotFoundException fileNotFoundException) {
                this.fLoaded = false;
                try {
                    if (input != null) {
                        input.close();
                    }
                    if (connection instanceof JarURLConnection) {
                        ((JarURLConnection)connection).getJarFile().close();
                    }
                    break block22;
                }
                catch (IOException iOException) {}
                break block22;
            }
            catch (IOException e) {
                try {
                    PDECore.logException(e);
                }
                catch (Throwable throwable) {
                    try {
                        if (input != null) {
                            input.close();
                        }
                        if (connection instanceof JarURLConnection) {
                            ((JarURLConnection)connection).getJarFile().close();
                        }
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    if (input != null) {
                        input.close();
                    }
                    if (connection instanceof JarURLConnection) {
                        ((JarURLConnection)connection).getJarFile().close();
                    }
                    break block22;
                }
                catch (IOException iOException) {}
                break block22;
            }
            try {
                if (input != null) {
                    input.close();
                }
                if (connection instanceof JarURLConnection) {
                    ((JarURLConnection)connection).getJarFile().close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    public void load(InputStream stream) {
        try {
            SAXParserWrapper parser = new SAXParserWrapper();
            XMLDefaultHandler handler = new XMLDefaultHandler(this.fAbbreviated);
            parser.parse(stream, (DefaultHandler)handler);
            this.traverseDocumentTree(handler.getDocumentElement());
        }
        catch (SAXException sAXException) {
        }
        catch (IOException e) {
            PDECore.logException(e, "IOException reading following URL: " + this.fURL);
        }
        catch (Exception e) {
            PDECore.logException(e);
        }
    }

    private ISchemaAttribute processAttribute(ISchemaElement element, Node elementNode) {
        String aname = this.getAttribute(elementNode, "name");
        if (aname == null) {
            return null;
        }
        String atype = this.getAttribute(elementNode, "type");
        String ause = this.getAttribute(elementNode, "use");
        String avalue = this.getAttribute(elementNode, "value");
        ISchemaSimpleType type = null;
        if (atype != null) {
            type = (ISchemaSimpleType)((Object)this.resolveTypeReference(atype));
        }
        SchemaAttribute attribute = new SchemaAttribute(element, aname);
        if (ause != null) {
            int use = 0;
            if (ause.equals("required")) {
                use = 1;
            } else if (ause.equals("optional")) {
                use = 0;
            } else if (ause.equals("default")) {
                use = 2;
            }
            attribute.setUse(use);
        }
        if (avalue != null) {
            attribute.setValue(avalue);
        }
        NodeList children = elementNode.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                String tag = child.getNodeName();
                if (tag.equals("annotation")) {
                    this.processAttributeAnnotation(attribute, child);
                } else if (tag.equals("simpleType")) {
                    this.processAttributeSimpleType(attribute, child);
                }
            }
            ++i;
        }
        if (type != null && attribute.getType() == null) {
            attribute.setType(type);
        }
        return attribute;
    }

    private void processAttributeAnnotation(SchemaAttribute element, Node node) {
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                if (child.getNodeName().equals("documentation")) {
                    Node doc = child.getFirstChild();
                    if (doc != null) {
                        element.setDescription(this.getNormalizedText(doc.getNodeValue()));
                    }
                } else if (child.getNodeName().equals("appInfo") || child.getNodeName().equals("appinfo")) {
                    NodeList infos = child.getChildNodes();
                    int j = 0;
                    while (j < infos.getLength()) {
                        Node meta = infos.item(j);
                        if (meta.getNodeType() == 1 && meta.getNodeName().equals("meta.attribute")) {
                            element.setKind(this.processKind(this.getAttribute(meta, "kind")));
                            element.setBasedOn(this.getAttribute(meta, "basedOn"));
                            element.setTranslatableProperty(this.processTranslatable(this.getAttribute(meta, "translatable")));
                            element.setDeprecatedProperty(this.processDeprecated(this.getAttribute(meta, "deprecated")));
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
    }

    private boolean processTranslatable(String value) {
        return value != null && "true".equals(value);
    }

    private boolean processDeprecated(String value) {
        return value != null && "true".equals(value);
    }

    private SchemaSimpleType processAttributeRestriction(SchemaAttribute attribute, Node node) {
        NodeList children = node.getChildNodes();
        if (children.getLength() == 0) {
            return null;
        }
        String baseName = this.getAttribute(node, "base");
        if (!baseName.equals("string")) {
            return new SchemaSimpleType(attribute.getSchema(), "string");
        }
        SchemaSimpleType type = new SchemaSimpleType(attribute.getSchema(), baseName);
        Vector<ISchemaEnumeration> items = new Vector<ISchemaEnumeration>();
        int i = 0;
        while (i < children.getLength()) {
            ISchemaEnumeration enumeration;
            Node child = children.item(i);
            if (child.getNodeType() == 1 && child.getNodeName().equals("enumeration") && (enumeration = this.processEnumeration(attribute.getSchema(), child)) != null) {
                items.addElement(enumeration);
            }
            ++i;
        }
        ChoiceRestriction restriction = new ChoiceRestriction(attribute.getSchema());
        restriction.setChildren(items);
        type.setRestriction(restriction);
        return type;
    }

    private void processAttributeSimpleType(SchemaAttribute attribute, Node node) {
        NodeList children = node.getChildNodes();
        if (children.getLength() == 0) {
            return;
        }
        SchemaSimpleType type = null;
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1 && child.getNodeName().equals("restriction")) {
                type = this.processAttributeRestriction(attribute, child);
            }
            ++i;
        }
        if (type != null) {
            attribute.setType(type);
        }
    }

    private SchemaComplexType processComplexType(ISchemaElement owner, Node typeNode) {
        String aname = this.getAttribute(typeNode, "name");
        String amixed = this.getAttribute(typeNode, "mixed");
        SchemaComplexType complexType = new SchemaComplexType(this, aname);
        if (amixed != null && amixed.equals("true")) {
            complexType.setMixed(true);
        }
        NodeList children = typeNode.getChildNodes();
        ISchemaCompositor compositor = null;
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                if (child.getNodeName().equals("attribute")) {
                    complexType.addAttribute(this.processAttribute(owner, child));
                } else {
                    ISchemaObject object = this.processCompositorChild(owner, child, -1);
                    if (object instanceof ISchemaCompositor && compositor == null) {
                        compositor = (ISchemaCompositor)object;
                    }
                }
            }
            ++i;
        }
        complexType.setCompositor(compositor);
        return complexType;
    }

    private ISchemaCompositor processCompositor(ISchemaObject parent, Node node, int type) {
        SchemaCompositor compositor = new SchemaCompositor(parent, type);
        NodeList children = node.getChildNodes();
        int minOccurs = 1;
        int maxOccurs = 1;
        String aminOccurs = this.getAttribute(node, "minOccurs");
        String amaxOccurs = this.getAttribute(node, "maxOccurs");
        if (aminOccurs != null) {
            minOccurs = Integer.valueOf(aminOccurs);
        }
        if (amaxOccurs != null) {
            maxOccurs = amaxOccurs.equals("unbounded") ? Integer.MAX_VALUE : Integer.valueOf(amaxOccurs);
        }
        compositor.setMinOccurs(minOccurs);
        compositor.setMaxOccurs(maxOccurs);
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            ISchemaObject object = this.processCompositorChild(compositor, child, type);
            if (object != null) {
                compositor.addChild(object);
            }
            ++i;
        }
        return compositor;
    }

    private ISchemaObject processCompositorChild(ISchemaObject parent, Node child, int parentKind) {
        String tag = child.getNodeName();
        if (tag.equals("element") && parentKind != -1) {
            return this.processElement(parent, child);
        }
        if (tag.equals("sequence") && parentKind != 0) {
            return this.processCompositor(parent, child, 2);
        }
        if (tag.equals("choice") && parentKind != 0) {
            return this.processCompositor(parent, child, 1);
        }
        if (tag.equals("all") && (parentKind == -1 || parentKind == 3)) {
            return this.processCompositor(parent, child, 2);
        }
        if (tag.equals("group") && (parentKind == 1 || parentKind == 2)) {
            return this.processCompositor(parent, child, 2);
        }
        return null;
    }

    private ISchemaElement processElement(ISchemaObject parent, Node elementNode) {
        if (parent instanceof ISchemaCompositor) {
            return this.processElementReference((ISchemaCompositor)parent, elementNode);
        }
        return this.processElementDeclaration(parent, elementNode);
    }

    private ISchemaElement processElementDeclaration(ISchemaObject parent, Node elementNode) {
        String aname = this.getAttribute(elementNode, "name");
        if (aname == null) {
            return null;
        }
        String atype = this.getAttribute(elementNode, "type");
        int minOccurs = this.getMinOccurs(elementNode);
        int maxOccurs = this.getMaxOccurs(elementNode);
        SchemaType type = null;
        if (atype != null) {
            type = this.resolveTypeReference(atype);
        }
        SchemaElement element = aname.equals("extension") ? new SchemaRootElement(parent, aname) : new SchemaElement(parent, aname);
        element.setMinOccurs(minOccurs);
        element.setMaxOccurs(maxOccurs);
        NodeList children = elementNode.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                String tag = child.getNodeName();
                if (type == null && tag.equals("complexType")) {
                    type = this.processComplexType(element, child);
                }
                if (tag.equals("annotation")) {
                    this.processElementAnnotation(element, child);
                }
            }
            ++i;
        }
        element.setType(type);
        return element;
    }

    private ISchemaElement processElementReference(ISchemaCompositor compositor, Node elementNode) {
        String aref = this.getAttribute(elementNode, "ref");
        if (aref == null) {
            return null;
        }
        int minOccurs = this.getMinOccurs(elementNode);
        int maxOccurs = this.getMaxOccurs(elementNode);
        SchemaElementReference reference = new SchemaElementReference(compositor, aref);
        reference.addComments(elementNode);
        reference.setMinOccurs(minOccurs);
        reference.setMaxOccurs(maxOccurs);
        this.fReferences.addElement(reference);
        return reference;
    }

    private int getMinOccurs(Node elementNode) {
        String aminOccurs = this.getAttribute(elementNode, "minOccurs");
        if (aminOccurs != null) {
            return Integer.valueOf(aminOccurs);
        }
        return 1;
    }

    private int getMaxOccurs(Node elementNode) {
        String amaxOccurs = this.getAttribute(elementNode, "maxOccurs");
        if (amaxOccurs != null) {
            if (amaxOccurs.equals("unbounded")) {
                return Integer.MAX_VALUE;
            }
            return Integer.valueOf(amaxOccurs);
        }
        return 1;
    }

    private void processElementAnnotation(SchemaElement element, Node node) {
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                if (child.getNodeName().equals("documentation") && !this.fAbbreviated) {
                    element.setDescription(this.getNormalizedText(child.getFirstChild().getNodeValue()));
                } else if (child.getNodeName().equals("appInfo") || child.getNodeName().equals("appinfo")) {
                    NodeList infos = child.getChildNodes();
                    int j = 0;
                    while (j < infos.getLength()) {
                        Node meta = infos.item(j);
                        if (meta.getNodeType() == 1 && meta.getNodeName().equals("meta.element")) {
                            element.setLabelProperty(this.getAttribute(meta, "labelAttribute"));
                            element.setIconProperty(this.getAttribute(meta, "icon"));
                            if (element.getIconProperty() == null) {
                                element.setIconProperty(this.getAttribute(meta, "iconName"));
                            }
                            element.setTranslatableProperty(this.processTranslatable(this.getAttribute(meta, "translatable")));
                            element.setDeprecatedProperty(this.processDeprecated(this.getAttribute(meta, "deprecated")));
                            if (element instanceof ISchemaRootElement) {
                                String depSug = this.getAttribute(meta, "replacement");
                                ((ISchemaRootElement)((Object)element)).setDeprecatedSuggestion(depSug);
                                String internal = this.getAttribute(meta, "internal");
                                ((ISchemaRootElement)((Object)element)).setInternal(Boolean.valueOf(internal));
                            }
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
    }

    private ISchemaEnumeration processEnumeration(ISchema schema, Node node) {
        String name = this.getAttribute(node, "value");
        return new SchemaEnumeration(schema, name);
    }

    private int processKind(String name) {
        if (name != null) {
            if (name.equals("java")) {
                return 1;
            }
            if (name.equals("resource")) {
                return 2;
            }
            if (name.equals("identifier")) {
                return 3;
            }
        }
        return 0;
    }

    private void processSchemaAnnotation(Node node) {
        NodeList children = node.getChildNodes();
        String section = "overview";
        String sectionName = "Overview";
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                if (child.getNodeName().equals("documentation") && !this.fAbbreviated) {
                    String text = this.getNormalizedText(child.getFirstChild().getNodeValue());
                    if (section != null) {
                        if (section.equals("overview")) {
                            this.setDescription(text);
                        } else {
                            DocumentSection sec = new DocumentSection(this, section, sectionName);
                            sec.setDescription(text);
                            this.fDocSections.addElement(sec);
                        }
                    }
                } else if (child.getNodeName().equals("appInfo") || child.getNodeName().equals("appinfo")) {
                    NodeList infos = child.getChildNodes();
                    int j = 0;
                    while (j < infos.getLength()) {
                        Node meta = infos.item(j);
                        if (meta.getNodeType() == 1) {
                            if (meta.getNodeName().equals("meta.schema")) {
                                section = "overview";
                                this.setName(this.getAttribute(meta, "name"));
                                this.fPluginID = this.getAttribute(meta, "plugin");
                                this.fPointID = this.getAttribute(meta, "id");
                                this.fValid = true;
                            } else if (meta.getNodeName().equals("meta.section")) {
                                section = this.getAttribute(meta, "type");
                                sectionName = this.getAttribute(meta, "name");
                                if (sectionName == null) {
                                    sectionName = section;
                                }
                            }
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
    }

    private void processInclude(Node node) {
        String location = this.getAttribute(node, "schemaLocation");
        SchemaInclude include = new SchemaInclude(this, location, this.fAbbreviated);
        if (this.fIncludes == null) {
            this.fIncludes = new Vector();
        }
        this.fIncludes.add(include);
    }

    public void reload() {
        this.reload(null);
    }

    public void reload(InputStream is) {
        this.setNotificationEnabled(false);
        this.reset();
        if (is != null) {
            this.load(is);
        } else {
            this.load();
        }
        this.setNotificationEnabled(true);
        if (this.isLoaded()) {
            this.fireModelChanged(new ModelChangedEvent(this, 99, new Object[0], null));
        }
    }

    public void removeDocumentSection(IDocumentSection docSection) {
        this.fDocSections.removeElement(docSection);
        this.fireModelChanged(new ModelChangedEvent(this, 2, new Object[]{docSection}, null));
    }

    public void moveElementToSibling(ISchemaElement element, ISchemaObject sibling) {
        int newIndex;
        int index;
        if (!this.isLoaded()) {
            this.load();
        }
        if ((index = this.fElements.indexOf(element)) > (newIndex = sibling != null && this.fElements.contains(sibling) ? this.fElements.indexOf(sibling) : this.fElements.size() - 1)) {
            int i = index;
            while (i > newIndex) {
                this.fElements.set(i, this.fElements.elementAt(i - 1));
                --i;
            }
        } else if (index < newIndex) {
            int i = index;
            while (i < newIndex) {
                this.fElements.set(i, this.fElements.elementAt(i + 1));
                ++i;
            }
        } else {
            return;
        }
        this.fElements.set(newIndex, element);
        this.fireModelChanged(new ModelChangedEvent(this, 3, new Object[]{this}, null));
    }

    public void removeElement(ISchemaElement element) {
        this.fElements.removeElement(element);
        this.fireModelChanged(new ModelChangedEvent(this, 2, new Object[]{element}, null));
    }

    public void removeModelChangedListener(IModelChangedListener listener) {
        this.fListeners.remove((Object)listener);
    }

    private void reset() {
        this.fElements = new Vector();
        this.fDocSections = new Vector();
        this.fIncludes = null;
        this.fPointID = null;
        this.fPluginID = null;
        this.fReferences = null;
        this.fDescription = null;
        this.fName = null;
        this.fValid = false;
        this.fLoaded = false;
    }

    private void resolveElementReference(ISchemaObjectReference reference) {
        ISchemaElement[] elementList = this.getResolvedElements();
        int i = 0;
        while (i < elementList.length) {
            ISchemaElement element = elementList[i];
            if (!(element instanceof ISchemaObjectReference) && element.getName().equals(reference.getName())) {
                reference.setReferencedObject(element);
                break;
            }
            ++i;
        }
    }

    private void resolveReference(ISchemaObjectReference reference) {
        Class clazz = reference.getReferencedObjectClass();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.pde.internal.core.ischema.ISchemaElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(clazz2)) {
            this.resolveElementReference(reference);
        }
    }

    private void resolveReferences(Vector references) {
        int i = 0;
        while (i < references.size()) {
            ISchemaObjectReference reference = (ISchemaObjectReference)references.elementAt(i);
            this.resolveReference(reference);
            ++i;
        }
    }

    private SchemaType resolveTypeReference(String typeName) {
        return new SchemaSimpleType(this, typeName);
    }

    public void setDescription(String newDescription) {
        String oldValue = this.fDescription;
        this.fDescription = newDescription;
        this.fireModelObjectChanged(this, "description", oldValue, this.fDescription);
    }

    public void setName(String newName) {
        if (newName == null) {
            newName = "";
        }
        String oldValue = this.fName;
        this.fName = newName;
        this.fireModelObjectChanged(this, "name", oldValue, this.fName);
    }

    public void setPluginId(String newId) {
        String oldValue = this.fPluginID;
        this.fPluginID = newId;
        this.fireModelObjectChanged(this, "pluginId", oldValue, newId);
    }

    public void setPointId(String newId) {
        String oldValue = this.fPointID;
        this.fPointID = newId;
        this.fireModelObjectChanged(this, "pointId", oldValue, newId);
    }

    public void setNotificationEnabled(boolean newNotificationEnabled) {
        this.fNotificationEnabled = newNotificationEnabled;
    }

    public String toString() {
        return this.fName;
    }

    public void traverseDocumentTree(Node root) {
        if (root == null) {
            return;
        }
        NodeList children = root.getChildNodes();
        this.fReferences = new Vector();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                String nodeName = child.getNodeName().toLowerCase(Locale.ENGLISH);
                if (nodeName.equals("element")) {
                    ISchemaElement element = this.processElement(this, child);
                    if (element == null) {
                        this.fValid = false;
                        return;
                    }
                    ISchemaAttribute[] attributes = element.getAttributes();
                    int j = 0;
                    while (j < attributes.length) {
                        if (attributes[j] == null) {
                            this.fValid = false;
                            return;
                        }
                        ++j;
                    }
                    this.fElements.addElement(element);
                } else if (nodeName.equals("annotation")) {
                    this.processSchemaAnnotation(child);
                } else if (nodeName.equals("include")) {
                    this.processInclude(child);
                }
            }
            ++i;
        }
        this.addOmittedDocumentSections();
        this.fLoaded = true;
        if (this.fReferences.size() > 0) {
            this.resolveReferences(this.fReferences);
        }
        this.fReferences = null;
    }

    private void addOmittedDocumentSections() {
        int i = 0;
        while (i < DocumentSection.DOC_SECTIONS.length) {
            DocumentSection section = new DocumentSection(this, DocumentSection.DOC_SECTIONS[i], null);
            if (!this.fDocSections.contains(section)) {
                this.addDocumentSection(section);
            }
            ++i;
        }
        Collections.sort(this.fDocSections);
    }

    public void updateReferencesFor(ISchemaElement element) {
        this.updateReferencesFor(element, 3);
    }

    public void updateReferencesFor(ISchemaElement element, int kind) {
        int i = 0;
        while (i < this.fElements.size()) {
            SchemaCompositor compositor;
            ISchemaType type;
            ISchemaElement el = (ISchemaElement)this.fElements.elementAt(i);
            if (!el.equals(element) && (type = el.getType()) instanceof ISchemaComplexType && (compositor = (SchemaCompositor)((ISchemaComplexType)type).getCompositor()) != null) {
                compositor.updateReferencesFor(element, kind);
            }
            ++i;
        }
    }

    public void write(String indent, PrintWriter writer) {
        int i;
        writer.println("<?xml version='1.0' encoding='UTF-8'?>");
        writer.println("<!-- Schema file written by PDE -->");
        writer.println("<schema targetNamespace=\"" + this.fPluginID + "\" xmlns=\"http://www.w3.org/2001/XMLSchema\">");
        String indent2 = "      ";
        String indent3 = String.valueOf(indent2) + INDENT;
        writer.println(String.valueOf(indent) + "<annotation>");
        writer.println(String.valueOf(indent2) + (this.getSchemaVersion() >= 3.4 ? "<appinfo>" : "<appInfo>"));
        writer.print(String.valueOf(indent3) + "<meta.schema plugin=\"" + this.fPluginID + "\"");
        writer.print(" id=\"" + this.fPointID + "\"");
        writer.println(" name=\"" + this.getName() + "\"/>");
        writer.println(String.valueOf(indent2) + (this.getSchemaVersion() >= 3.4 ? "</appinfo>" : "</appInfo>"));
        writer.println(String.valueOf(indent2) + "<documentation>");
        writer.println(String.valueOf(indent3) + this.getWritableDescription());
        writer.println(String.valueOf(indent2) + "</documentation>");
        writer.println("   </annotation>");
        writer.println();
        if (this.fIncludes != null) {
            i = 0;
            while (i < this.fIncludes.size()) {
                ISchemaInclude include = (ISchemaInclude)this.fIncludes.get(i);
                include.write(INDENT, writer);
                writer.println();
                ++i;
            }
        }
        i = 0;
        while (i < this.fElements.size()) {
            ISchemaElement element = (ISchemaElement)this.fElements.elementAt(i);
            element.write(INDENT, writer);
            writer.println();
            ++i;
        }
        i = 0;
        while (i < this.fDocSections.size()) {
            IDocumentSection section = (IDocumentSection)this.fDocSections.elementAt(i);
            section.write(INDENT, writer);
            writer.println();
            ++i;
        }
        writer.println("</schema>");
    }

    private String getWritableDescription() {
        String lineDelimiter = System.getProperty("line.separator");
        String description = PDEXMLHelper.getWritableString(this.getDescription());
        String platformDescription = description.replaceAll("\\r\\n|\\r|\\n", lineDelimiter);
        return platformDescription;
    }

    public boolean isDeperecated() {
        Iterator it = this.fElements.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (!(next instanceof SchemaRootElement)) continue;
            return ((SchemaRootElement)next).isDeprecated();
        }
        return false;
    }

    public String getDeprecatedSuggestion() {
        Iterator it = this.fElements.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (!(next instanceof SchemaRootElement)) continue;
            return ((SchemaRootElement)next).getDeprecatedSuggestion();
        }
        return null;
    }

    public boolean isInternal() {
        Iterator it = this.fElements.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (!(next instanceof SchemaRootElement)) continue;
            return ((SchemaRootElement)next).isInternal();
        }
        return false;
    }

    public double getSchemaVersion() {
        if (this.fTargetVersion == 0.0) {
            IPluginBase base;
            IPluginModelBase model = PDECore.getDefault().getModelManager().findModel(this.fPluginID);
            if (model != null && (base = model.getPluginBase()) != null && base.getSchemaVersion() != null) {
                this.fTargetVersion = Double.parseDouble(base.getSchemaVersion());
            }
            if (this.fTargetVersion == 0.0) {
                this.fTargetVersion = Double.parseDouble(TargetPlatformHelper.getSchemaVersion());
            }
        }
        return this.fTargetVersion;
    }
}

