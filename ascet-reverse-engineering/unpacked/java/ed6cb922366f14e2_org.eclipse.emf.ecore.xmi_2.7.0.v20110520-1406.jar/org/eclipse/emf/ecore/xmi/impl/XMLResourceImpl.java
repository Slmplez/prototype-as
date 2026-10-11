/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.URIConverter$Loadable
 *  org.eclipse.emf.ecore.resource.URIConverter$Saveable
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$BinaryIO$Version
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectInputStream
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectOutputStream
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectOutputStream$Check
 *  org.eclipse.emf.ecore.resource.impl.ResourceImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.xml.type.AnyType
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.WeakHashMap;
import javax.xml.parsers.DocumentBuilderFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl;
import org.eclipse.emf.ecore.resource.impl.ResourceImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.xmi.DOMHandler;
import org.eclipse.emf.ecore.xmi.DOMHelper;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.XMLSave;
import org.eclipse.emf.ecore.xmi.impl.DefaultDOMHandlerImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLHelperImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLLoadImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLSaveImpl;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLResourceImpl
extends ResourceImpl
implements XMLResource {
    protected Map<String, EObject> idToEObjectMap;
    protected Map<EObject, String> eObjectToIDMap;
    protected Map<EObject, AnyType> eObjectToExtensionMap;
    protected String encoding;
    protected String xmlVersion;
    protected boolean useZip;
    protected String publicId;
    protected String systemId;
    protected DOMHandler domHandler;
    protected static final Map<EObject, String> DETACHED_EOBJECT_TO_ID_MAP = Collections.synchronizedMap(new WeakHashMap());

    public XMLResourceImpl() {
        this.init();
    }

    public XMLResourceImpl(URI uri) {
        super(uri);
        this.init();
    }

    protected void init() {
        this.encoding = "ASCII";
        this.xmlVersion = "1.0";
    }

    protected boolean useIDs() {
        return this.eObjectToIDMap != null || this.idToEObjectMap != null || this.useUUIDs();
    }

    protected boolean useIDAttributes() {
        return true;
    }

    protected boolean useUUIDs() {
        return false;
    }

    protected boolean assignIDsWhileLoading() {
        return true;
    }

    @Override
    public Map<Object, Object> getDefaultSaveOptions() {
        if (this.defaultSaveOptions == null) {
            this.defaultSaveOptions = new HashMap();
        }
        return this.defaultSaveOptions;
    }

    @Override
    public Map<Object, Object> getDefaultLoadOptions() {
        if (this.defaultLoadOptions == null) {
            this.defaultLoadOptions = new HashMap();
        }
        return this.defaultLoadOptions;
    }

    protected XMLHelper createXMLHelper() {
        return new XMLHelperImpl(this);
    }

    protected XMLLoad createXMLLoad() {
        return new XMLLoadImpl(this.createXMLHelper());
    }

    protected XMLLoad createXMLLoad(Map<?, ?> options) {
        return this.createXMLLoad();
    }

    protected XMLSave createXMLSave() {
        return new XMLSaveImpl(this.createXMLHelper());
    }

    protected XMLSave createXMLSave(Map<?, ?> options) {
        return this.createXMLSave();
    }

    public void doLoad(InputStream inputStream, Map<?, ?> options) throws IOException {
        if (inputStream instanceof URIConverter.Loadable) {
            ((URIConverter.Loadable)inputStream).loadResource((Resource)this);
        } else if (options != null && Boolean.TRUE.equals(options.get("BINARY"))) {
            int bufferCapacity;
            if (!(inputStream instanceof BufferedInputStream) && (bufferCapacity = BinaryResourceImpl.getBufferCapacity((Map)options)) > 0) {
                inputStream = new BufferedInputStream(inputStream, bufferCapacity);
            }
            BinaryResourceImpl.EObjectInputStream eObjectInputStream = new BinaryResourceImpl.EObjectInputStream(inputStream, options);
            XMLResource.ResourceHandler handler = (XMLResource.ResourceHandler)options.get("RESOURCE_HANDLER");
            if (handler != null) {
                handler.preLoad(this, inputStream, options);
            }
            eObjectInputStream.loadResource((Resource)this);
            int i = 0;
            int size = eObjectInputStream.readCompressedInt();
            while (i < size) {
                this.setID((EObject)eObjectInputStream.loadEObject(), eObjectInputStream.readString());
                ++i;
            }
            if (handler != null) {
                handler.postLoad(this, inputStream, options);
            }
        } else {
            XMLResource.ResourceHandler handler;
            XMLLoad xmlLoad = this.createXMLLoad(options);
            if (options == null) {
                options = Collections.EMPTY_MAP;
            }
            if ((handler = (XMLResource.ResourceHandler)options.get("RESOURCE_HANDLER")) != null) {
                handler.preLoad(this, inputStream, options);
            }
            xmlLoad.load((XMLResource)this, inputStream, options);
            xmlLoad = null;
            if (handler != null) {
                handler.postLoad(this, inputStream, options);
            }
        }
    }

    public void doSave(OutputStream outputStream, Map<?, ?> options) throws IOException {
        if (outputStream instanceof URIConverter.Saveable) {
            ((URIConverter.Saveable)outputStream).saveResource((Resource)this);
        } else if (options != null && Boolean.TRUE.equals(options.get("BINARY"))) {
            XMLResource.ResourceHandler handler;
            boolean buffer;
            boolean bl = buffer = !(outputStream instanceof BufferedOutputStream);
            if (buffer) {
                int bufferCapacity = BinaryResourceImpl.getBufferCapacity((Map)options);
                if (bufferCapacity > 0) {
                    outputStream = new BufferedOutputStream(outputStream, bufferCapacity);
                } else {
                    buffer = false;
                }
            }
            if ((handler = (XMLResource.ResourceHandler)options.get("RESOURCE_HANDLER")) != null) {
                handler.preSave(this, outputStream, options);
            }
            try {
                BinaryResourceImpl.EObjectOutputStream eObjectOutputStream = options.containsKey("VERSION") ? new BinaryResourceImpl.EObjectOutputStream(outputStream, options) : new BinaryResourceImpl.EObjectOutputStream(outputStream, options, BinaryResourceImpl.BinaryIO.Version.VERSION_1_1);
                eObjectOutputStream.saveResource((Resource)this);
                if (this.eObjectToIDMap != null) {
                    eObjectOutputStream.writeCompressedInt(this.eObjectToIDMap.size());
                    for (Map.Entry<EObject, String> entry : this.eObjectToIDMap.entrySet()) {
                        eObjectOutputStream.saveEObject((InternalEObject)entry.getKey(), BinaryResourceImpl.EObjectOutputStream.Check.NOTHING);
                        eObjectOutputStream.writeString(entry.getValue());
                    }
                } else {
                    eObjectOutputStream.writeCompressedInt(0);
                }
            }
            finally {
                if (buffer) {
                    outputStream.flush();
                }
            }
            if (handler != null) {
                handler.postSave(this, outputStream, options);
            }
        } else {
            XMLResource.ResourceHandler handler;
            XMLSave xmlSave = this.createXMLSave(options);
            if (options == null) {
                options = Collections.EMPTY_MAP;
            }
            if ((handler = (XMLResource.ResourceHandler)options.get("RESOURCE_HANDLER")) != null) {
                handler.preSave(this, outputStream, options);
            }
            xmlSave.save((XMLResource)this, outputStream, options);
            if (handler != null) {
                handler.postSave(this, outputStream, options);
            }
        }
    }

    @Override
    public final void save(Writer writer, Map<?, ?> options) throws IOException {
        if (this.defaultSaveOptions == null || this.defaultSaveOptions.isEmpty()) {
            this.doSave(writer, options);
        } else if (options == null) {
            this.doSave(writer, this.defaultSaveOptions);
        } else {
            HashMap mergedOptions = new HashMap(this.defaultSaveOptions);
            mergedOptions.putAll(options);
            this.doSave(writer, mergedOptions);
        }
        this.setModified(false);
    }

    public void doSave(Writer writer, Map<?, ?> options) throws IOException {
        XMLSave xmlSave = this.createXMLSave(options);
        if (options == null) {
            options = Collections.EMPTY_MAP;
        }
        xmlSave.save((XMLResource)this, writer, options);
    }

    @Override
    public Document save(Document doc, Map<?, ?> options, DOMHandler handler) {
        Document document;
        XMLSave xmlSave = this.createXMLSave(options);
        this.domHandler = handler;
        if (this.domHandler == null) {
            this.domHandler = new DefaultDOMHandlerImpl();
        }
        if ((document = doc) == null) {
            try {
                document = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
            }
            catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
        if (this.defaultSaveOptions == null || this.defaultSaveOptions.isEmpty()) {
            return xmlSave.save(this, document, options == null ? Collections.EMPTY_MAP : options, this.domHandler);
        }
        if (options == null) {
            return xmlSave.save(this, document, this.defaultSaveOptions, this.domHandler);
        }
        HashMap mergedOptions = new HashMap(this.defaultSaveOptions);
        mergedOptions.putAll(options);
        return xmlSave.save(this, document, mergedOptions, this.domHandler);
    }

    @Override
    public DOMHelper getDOMHelper() {
        return this.domHandler.getDOMHelper();
    }

    @Override
    public boolean useZip() {
        return this.useZip;
    }

    @Override
    public void setUseZip(boolean useZip) {
        this.useZip = useZip;
    }

    @Override
    public String getPublicId() {
        return this.publicId;
    }

    @Override
    public String getSystemId() {
        return this.systemId;
    }

    @Override
    public void setDoctypeInfo(String publicId, String systemId) {
        this.publicId = publicId;
        this.systemId = systemId;
    }

    @Override
    public String getEncoding() {
        return this.encoding;
    }

    @Override
    public void setEncoding(String encoding) {
        this.encoding = encoding;
    }

    @Override
    public String getXMLVersion() {
        return this.xmlVersion;
    }

    @Override
    public void setXMLVersion(String version) {
        this.xmlVersion = version;
    }

    @Override
    public Map<String, EObject> getIDToEObjectMap() {
        if (this.idToEObjectMap == null) {
            this.idToEObjectMap = new HashMap<String, EObject>();
        }
        return this.idToEObjectMap;
    }

    @Override
    public Map<EObject, String> getEObjectToIDMap() {
        if (this.eObjectToIDMap == null) {
            this.eObjectToIDMap = new HashMap<EObject, String>();
        }
        return this.eObjectToIDMap;
    }

    @Override
    public Map<EObject, AnyType> getEObjectToExtensionMap() {
        if (this.eObjectToExtensionMap == null) {
            this.eObjectToExtensionMap = new HashMap<EObject, AnyType>();
        }
        return this.eObjectToExtensionMap;
    }

    @Override
    public String getID(EObject eObject) {
        if (this.eObjectToIDMap == null) {
            return null;
        }
        return this.eObjectToIDMap.get(eObject);
    }

    @Override
    public void setID(EObject eObject, String id) {
        String oldID;
        String string = oldID = id != null ? this.getEObjectToIDMap().put(eObject, id) : this.getEObjectToIDMap().remove(eObject);
        if (oldID != null) {
            this.getIDToEObjectMap().remove(oldID);
        }
        if (id != null) {
            this.getIDToEObjectMap().put(id, eObject);
        }
    }

    public String getURIFragment(EObject eObject) {
        String id = this.getID(eObject);
        if (id != null) {
            return id;
        }
        return super.getURIFragment(eObject);
    }

    protected EObject getEObjectByID(String id) {
        EObject eObject;
        if (this.idToEObjectMap != null && (eObject = this.idToEObjectMap.get(id)) != null) {
            return eObject;
        }
        return this.useIDAttributes() ? super.getEObjectByID(id) : null;
    }

    protected boolean isPath(String uriFragment) {
        return uriFragment.startsWith("/");
    }

    protected boolean isAttachedDetachedHelperRequired() {
        return this.useIDs() || super.isAttachedDetachedHelperRequired();
    }

    protected void attachedHelper(EObject eObject) {
        super.attachedHelper(eObject);
        if (this.useIDs()) {
            String id = this.getID(eObject);
            if (this.useUUIDs() && id == null) {
                if (this.assignIDsWhileLoading() || !this.isLoading()) {
                    id = DETACHED_EOBJECT_TO_ID_MAP.remove(eObject);
                    if (id == null) {
                        id = EcoreUtil.generateUUID();
                    }
                    this.setID(eObject, id);
                }
            } else if (id != null) {
                this.getIDToEObjectMap().put(id, eObject);
            }
        }
    }

    protected void detachedHelper(EObject eObject) {
        if (this.useIDs()) {
            if (this.useUUIDs()) {
                DETACHED_EOBJECT_TO_ID_MAP.put(eObject, this.getID(eObject));
            }
            if (this.idToEObjectMap != null && this.eObjectToIDMap != null) {
                this.setID(eObject, null);
            }
        }
        super.detachedHelper(eObject);
    }

    protected void doUnload() {
        super.doUnload();
        if (this.idToEObjectMap != null) {
            this.idToEObjectMap.clear();
        }
        if (this.eObjectToIDMap != null) {
            this.eObjectToIDMap.clear();
        }
        if (this.eObjectToExtensionMap != null) {
            this.eObjectToExtensionMap.clear();
        }
    }

    public String toKeyString() {
        StringBuffer result = new StringBuffer("Key type: ");
        result.append(this.getClass().toString());
        if (this.idToEObjectMap != null) {
            TreeMap<String, String> tree = new TreeMap<String, String>();
            for (String key : this.idToEObjectMap.keySet()) {
                if (key == null) continue;
                tree.put(key, key);
            }
            for (String key : tree.values()) {
                EObject value = this.idToEObjectMap.get(key);
                result.append("\r\n\t[Key=" + key + ", Value=" + value + "]");
            }
        }
        return result.toString();
    }

    @Override
    public final void load(Node node, Map<?, ?> options) throws IOException {
        if (!this.isLoaded) {
            Notification notification = this.setLoaded(true);
            this.isLoading = true;
            if (this.errors != null) {
                this.errors.clear();
            }
            if (this.warnings != null) {
                this.warnings.clear();
            }
            try {
                if (this.defaultLoadOptions == null || this.defaultLoadOptions.isEmpty()) {
                    this.doLoad(node, options);
                } else if (options == null) {
                    this.doLoad(node, this.defaultLoadOptions);
                } else {
                    HashMap mergedOptions = new HashMap(this.defaultLoadOptions);
                    mergedOptions.putAll(options);
                    this.doLoad(node, mergedOptions);
                }
            }
            finally {
                this.isLoading = false;
                if (notification != null) {
                    this.eNotify(notification);
                }
                this.setModified(false);
            }
        }
    }

    public void doLoad(Node node, Map<?, ?> options) throws IOException {
        XMLLoad xmlLoad = this.createXMLLoad(options);
        if (options == null) {
            options = Collections.EMPTY_MAP;
        }
        xmlLoad.load((XMLResource)this, node, options);
    }

    @Override
    public final void load(InputSource inputSource, Map<?, ?> options) throws IOException {
        if (!this.isLoaded) {
            Notification notification = this.setLoaded(true);
            this.isLoading = true;
            if (this.errors != null) {
                this.errors.clear();
            }
            if (this.warnings != null) {
                this.warnings.clear();
            }
            try {
                if (this.defaultLoadOptions == null || this.defaultLoadOptions.isEmpty()) {
                    this.doLoad(inputSource, options);
                } else if (options == null) {
                    this.doLoad(inputSource, this.defaultLoadOptions);
                } else {
                    HashMap mergedOptions = new HashMap(this.defaultLoadOptions);
                    mergedOptions.putAll(options);
                    this.doLoad(inputSource, mergedOptions);
                }
            }
            finally {
                this.isLoading = false;
                if (notification != null) {
                    this.eNotify(notification);
                }
                this.setModified(false);
            }
        }
    }

    public void doLoad(InputSource inputSource, Map<?, ?> options) throws IOException {
        XMLLoad xmlLoad = this.createXMLLoad(options);
        if (options == null) {
            options = Collections.EMPTY_MAP;
        }
        xmlLoad.load((XMLResource)this, inputSource, options);
    }
}

