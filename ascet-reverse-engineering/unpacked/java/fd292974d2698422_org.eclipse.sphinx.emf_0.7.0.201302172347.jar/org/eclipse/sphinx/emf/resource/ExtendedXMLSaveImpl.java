/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.resource.URIConverter$Writeable
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.impl.XMLSaveImpl
 *  org.eclipse.emf.ecore.xml.namespace.XMLNamespacePackage
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 *  org.eclipse.sphinx.platform.util.ReflectUtil
 */
package org.eclipse.sphinx.emf.resource;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLSaveImpl;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespacePackage;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.resource.IModelConverter;
import org.eclipse.sphinx.emf.resource.ModelConverterRegistry;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.sphinx.platform.util.ReflectUtil;
import org.w3c.dom.Element;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedXMLSaveImpl
extends XMLSaveImpl {
    protected Map<?, ?> options;
    protected IModelConverter converter;

    public ExtendedXMLSaveImpl(XMLHelper helper) {
        super(helper);
    }

    public ExtendedXMLSaveImpl(Map<?, ?> options, XMLHelper helper, String encoding) {
        super(options, helper, encoding);
    }

    public ExtendedXMLSaveImpl(Map<?, ?> options, XMLHelper helper, String encoding, String xmlVersion) {
        super(options, helper, encoding, xmlVersion);
    }

    public void save(XMLResource resource, Writer writer, Map<?, ?> options) throws IOException {
        this.options = options;
        super.save(resource, writer, options);
    }

    public void save(XMLResource resource, OutputStream outputStream, Map<?, ?> options) throws IOException {
        boolean didConvert;
        List contents;
        block12: {
            this.options = options;
            if (outputStream instanceof URIConverter.Writeable) {
                URIConverter.Writeable writeable = (URIConverter.Writeable)outputStream;
                resource.setEncoding(writeable.getEncoding());
                this.save(resource, writeable.asWriter(), options);
                return;
            }
            this.xmlResource = resource;
            this.init(resource, options);
            this.converter = ModelConverterRegistry.INSTANCE.getSaveConverter(this.xmlResource, options);
            contents = this.roots = (List)options.get("ROOT_OBJECTS");
            if (contents == null) {
                contents = resource.getContents();
            }
            if (contents.size() > 0) {
                this.traverse(contents);
            }
            didConvert = false;
            if (this.converter != null) {
                try {
                    try {
                        this.converter.convertSave(this.doc, this.flushThreshold, this.xmlResource.getURI(), outputStream, this.encoding, this.helper, options);
                        didConvert = true;
                    }
                    catch (Exception ex) {
                        PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
                        this.converter.dispose();
                        break block12;
                    }
                }
                catch (Throwable throwable) {
                    this.converter.dispose();
                    throw throwable;
                }
                this.converter.dispose();
            }
        }
        if (!didConvert) {
            if ("US-ASCII".equals(this.encoding) || "ASCII".equals(this.encoding)) {
                this.writeAscii(outputStream);
                outputStream.flush();
            } else {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, this.helper.getJavaEncoding(this.encoding));
                this.write(outputStreamWriter);
                outputStreamWriter.flush();
            }
        }
        this.endSave(contents);
        this.xmlResource = null;
    }

    public void traverse(List<? extends EObject> contents) {
        super.traverse(contents);
        if (this.converter != null) {
            try {
                this.converter.addExtraAttributesToSavedRootElement(this.doc, this.options);
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
            }
        }
    }

    protected void addNamespaceDeclarations() {
        EPackage noNamespacePackage = this.helper.getNoNamespacePackage();
        EMap packages = this.helper.packages();
        StringBuffer buffer = this.getBuffer();
        if (buffer == null) {
            buffer = new StringBuffer();
        }
        buffer.setLength(0);
        StringBuffer xsiSchemaLocation = buffer;
        String xsiNoNamespaceSchemaLocation = null;
        if (this.declareSchemaLocation) {
            EMap xsiSchemaLocationMap;
            EObject schemaLocationRoot;
            EReference xsiSchemaLocationMapFeature22;
            XMLResource resource;
            HashMap<String, String> handledBySchemaLocationMap = new HashMap<String, String>();
            Map schemaLocationCatalog = (Map)this.options.get("SCHEMA_LOCATION_CATALOG");
            if (this.extendedMetaData != null && (resource = this.helper.getResource()) != null && resource.getContents().size() >= 1 && (xsiSchemaLocationMapFeature22 = this.extendedMetaData.getXSISchemaLocationMapFeature((schemaLocationRoot = this.getSchemaLocationRoot((EObject)resource.getContents().get(0))).eClass())) != null && !(xsiSchemaLocationMap = (EMap)schemaLocationRoot.eGet((EStructuralFeature)xsiSchemaLocationMapFeature22)).isEmpty()) {
                handledBySchemaLocationMap = new HashMap(xsiSchemaLocationMap.map());
                for (Map.Entry entry : xsiSchemaLocationMap.entrySet()) {
                    String namespace = (String)entry.getKey();
                    String location = (String)entry.getValue();
                    URI locationURI = URI.createURI((String)location);
                    if (namespace == null) {
                        this.declareXSI = true;
                        xsiNoNamespaceSchemaLocation = this.helper.deresolve(locationURI).toString();
                        continue;
                    }
                    if (this.converter != null) {
                        String mmBaseNsURI = this.converter.getMetaModelVersionDescriptor().getNamespace();
                        String resourceBaseNsURI = this.converter.getResourceVersionDescriptor().getNamespace();
                        if (mmBaseNsURI != null && resourceBaseNsURI != null && namespace.startsWith(mmBaseNsURI)) {
                            namespace = namespace.replace(mmBaseNsURI, resourceBaseNsURI);
                            locationURI = null;
                            if (schemaLocationCatalog != null) {
                                location = (String)schemaLocationCatalog.get(namespace);
                                if (location != null) {
                                    locationURI = URI.createURI((String)location);
                                } else {
                                    PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException("Schema location catalog entry for namespace '" + namespace + "' is missing"));
                                }
                            } else {
                                PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException("Schema location catalog is missing"));
                            }
                        }
                    } else {
                        IMetaModelDescriptor mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(schemaLocationRoot);
                        if (mmDescriptor != null) {
                            boolean compatible = false;
                            for (java.net.URI compatibleNsURI : mmDescriptor.getCompatibleNamespaceURIs()) {
                                if (!namespace.startsWith(compatibleNsURI.toString())) continue;
                                compatible = true;
                                break;
                            }
                            if (compatible) continue;
                        }
                    }
                    if (locationURI == null) continue;
                    this.declareXSI = true;
                    if (xsiSchemaLocation.length() > 0) {
                        xsiSchemaLocation.append(' ');
                    }
                    xsiSchemaLocation.append(namespace);
                    xsiSchemaLocation.append(' ');
                    xsiSchemaLocation.append(this.helper.deresolve(locationURI).toString());
                }
            }
            xsiSchemaLocationMap = packages;
            int xsiSchemaLocationMapFeature22 = ((EPackage[])xsiSchemaLocationMap).length;
            int n = 0;
            while (n < xsiSchemaLocationMapFeature22) {
                EPackage ePackage = xsiSchemaLocationMap[n];
                String javaImplementationLocation = null;
                if (this.declareSchemaLocationImplementation) {
                    try {
                        Field field = ePackage.getClass().getField("eINSTANCE");
                        javaImplementationLocation = "java://" + field.getDeclaringClass().getName();
                    }
                    catch (Exception exception) {}
                }
                if (noNamespacePackage == ePackage) {
                    if (ePackage.eResource() != null && !handledBySchemaLocationMap.containsKey(null)) {
                        if (javaImplementationLocation != null) {
                            xsiNoNamespaceSchemaLocation = javaImplementationLocation;
                        } else if (schemaLocationCatalog != null) {
                            xsiNoNamespaceSchemaLocation = (String)schemaLocationCatalog.get(null);
                            if (xsiNoNamespaceSchemaLocation == null) {
                                PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException("Schema location catalog entry for no namespace (null) is missing"));
                            }
                        } else {
                            xsiNoNamespaceSchemaLocation = this.helper.getHREF((EObject)ePackage);
                            if (xsiNoNamespaceSchemaLocation != null && xsiNoNamespaceSchemaLocation.endsWith("#/")) {
                                xsiNoNamespaceSchemaLocation = xsiNoNamespaceSchemaLocation.substring(0, xsiNoNamespaceSchemaLocation.length() - 2);
                            }
                        }
                        this.declareXSI = xsiNoNamespaceSchemaLocation != null;
                    }
                } else {
                    String namespace;
                    String string = namespace = this.extendedMetaData == null ? ePackage.getNsURI() : this.extendedMetaData.getNamespace(ePackage);
                    if (this.converter != null) {
                        String mmBaseNsURI = this.converter.getMetaModelVersionDescriptor().getNamespace();
                        String resourceBaseNsURI = this.converter.getResourceVersionDescriptor().getNamespace();
                        if (mmBaseNsURI != null && resourceBaseNsURI != null && namespace.startsWith(mmBaseNsURI)) {
                            namespace = namespace.replace(mmBaseNsURI, resourceBaseNsURI);
                        }
                    }
                    if (!(handledBySchemaLocationMap.containsKey(namespace) || javaImplementationLocation == null && namespace == null)) {
                        String location = null;
                        if (javaImplementationLocation != null) {
                            location = javaImplementationLocation;
                        } else if (schemaLocationCatalog != null) {
                            location = (String)schemaLocationCatalog.get(namespace);
                            if (location == null) {
                                PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException("Schema location catalog entry for namespace '" + namespace + "' is missing"));
                            }
                        } else {
                            location = this.helper.getHREF((EObject)ePackage);
                            if ((location = this.convertURI(location)).endsWith("#/")) {
                                location = location.substring(0, location.length() - 2);
                                URI uri = ePackage.eResource().getURI();
                                if (uri != null && uri.hasFragment()) {
                                    location = String.valueOf(location) + "#" + uri.fragment();
                                }
                            }
                        }
                        if (location != null) {
                            this.declareXSI = true;
                            if (xsiSchemaLocation.length() > 0) {
                                xsiSchemaLocation.append(' ');
                            }
                            xsiSchemaLocation.append(namespace);
                            xsiSchemaLocation.append(' ');
                            xsiSchemaLocation.append(location);
                        }
                        handledBySchemaLocationMap.put(namespace, location);
                    }
                }
                ++n;
            }
        }
        EMap eMap = packages;
        int n = ((EPackage[])eMap).length;
        int n2 = 0;
        while (n2 < n) {
            EPackage ePackage = eMap[n2];
            if (ePackage != noNamespacePackage && ePackage != XMLNamespacePackage.eINSTANCE && !"http://www.w3.org/2000/xmlns/".equals(ePackage.getNsURI())) {
                String nsURI;
                String string = nsURI = this.extendedMetaData == null ? ePackage.getNsURI() : this.extendedMetaData.getNamespace(ePackage);
                if (ePackage == this.xmlSchemaTypePackage) {
                    nsURI = "http://www.w3.org/2001/XMLSchema";
                }
                if (nsURI != null && !this.isDuplicateURI(nsURI)) {
                    if (this.converter != null) {
                        String mmBaseNsURI = this.converter.getMetaModelVersionDescriptor().getNamespace();
                        String resourceBaseNsURI = this.converter.getResourceVersionDescriptor().getNamespace();
                        if (mmBaseNsURI != null && resourceBaseNsURI != null && nsURI.startsWith(mmBaseNsURI)) {
                            nsURI = nsURI.replace(mmBaseNsURI, resourceBaseNsURI);
                        }
                    }
                    List nsPrefixes = this.helper.getPrefixes(ePackage);
                    for (String nsPrefix : nsPrefixes) {
                        if (!this.toDOM) {
                            if (nsPrefix != null && nsPrefix.length() > 0) {
                                if (this.declareXSI && "xsi".equals(nsPrefix)) continue;
                                this.doc.addAttributeNS("xmlns", nsPrefix, nsURI);
                                continue;
                            }
                            this.doc.addAttribute("xmlns", nsURI);
                            continue;
                        }
                        if (nsPrefix != null && nsPrefix.length() > 0) {
                            if (this.declareXSI && "xsi".equals(nsPrefix)) continue;
                            ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns:" + nsPrefix, nsURI);
                            continue;
                        }
                        ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns", nsURI);
                    }
                }
            }
            ++n2;
        }
        if (this.declareXSI) {
            if (!this.toDOM) {
                this.doc.addAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
            } else {
                ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
            }
        }
        if (xsiSchemaLocation.length() > 0) {
            if (!this.toDOM) {
                this.doc.addAttribute("xsi:schemaLocation", xsiSchemaLocation.toString());
            } else {
                ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", "xsi:schemaLocation", xsiSchemaLocation.toString());
            }
        }
        if (xsiNoNamespaceSchemaLocation != null) {
            if (!this.toDOM) {
                this.doc.addAttribute("xsi:noNamespaceSchemaLocation", xsiNoNamespaceSchemaLocation);
            } else {
                ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", "xsi:noNamespaceSchemaLocation", xsiNoNamespaceSchemaLocation);
            }
        }
    }

    protected StringBuffer getBuffer() {
        try {
            return (StringBuffer)ReflectUtil.getInvisibleFieldValue((Object)((Object)this), (String)"buffer");
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            return null;
        }
    }

    protected Object writeTopObject(EObject top) {
        this.saveOuterContent(top);
        return super.writeTopObject(top);
    }

    protected void saveOuterContent(EObject top) {
        EList allAttributes = top.eClass().getEAllAttributes();
        for (Object element : allAttributes) {
            EAttribute attribute = (EAttribute)element;
            if (!"mixedOuterContent".equals(attribute.getName())) continue;
            this.saveElementFeatureMap(top, (EStructuralFeature)attribute);
        }
    }
}

