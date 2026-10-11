/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEMap
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.UniqueEList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.Resource$Internal
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.xml.type.SimpleAnyType
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage
 *  org.eclipse.emf.ecore.xml.type.internal.QName
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.TreeMap;
import javax.xml.namespace.QName;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xmi.DanglingHREFException;
import org.eclipse.emf.ecore.xmi.IllegalValueException;
import org.eclipse.emf.ecore.xmi.NameInfo;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.ConfigurationCache;
import org.eclipse.emf.ecore.xmi.impl.XMIHelperImpl;
import org.eclipse.emf.ecore.xmi.impl.XMISaveImpl;
import org.eclipse.emf.ecore.xml.type.SimpleAnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLHelperImpl
implements XMLHelper {
    protected static final Integer INTEGER_DATATYPE_IS_MANY = 2;
    protected static final Integer INTEGER_DATATYPE_SINGLE = 1;
    protected static final Integer INTEGER_IS_MANY_ADD = 3;
    protected static final Integer INTEGER_IS_MANY_MOVE = 4;
    protected static final Integer INTEGER_OTHER = 5;
    protected EPackage noNamespacePackage;
    protected XMLResource.XMLMap xmlMap;
    protected ExtendedMetaData extendedMetaData;
    protected boolean laxFeatureProcessing;
    protected EPackage.Registry packageRegistry;
    protected XMLResource resource;
    protected URI resourceURI;
    protected boolean deresolve;
    protected Map<EPackage, String> packages;
    protected Map<EStructuralFeature, Integer> featuresToKinds;
    protected String processDanglingHREF;
    protected DanglingHREFException danglingHREFException;
    protected EMap<String, String> prefixesToURIs;
    protected Map<String, List<String>> urisToPrefixes;
    protected Map<String, String> anyPrefixesToURIs;
    protected NamespaceSupport namespaceSupport;
    protected EClass anySimpleType;
    protected boolean seenEmptyStringMapping;
    protected EPackage xmlSchemaTypePackage = XMLTypePackage.eINSTANCE;
    protected List<String> allPrefixToURI;
    protected boolean checkForDuplicates;
    protected boolean mustHavePrefix;
    protected XMLResource.URIHandler uriHandler;
    protected List<? extends EObject> roots;
    protected String[] fragmentPrefixes;
    private EPackage previousPackage;
    private String previousNS;

    public static String saveString(Map<?, ?> options, List<? extends EObject> contents, String encoding, XMLHelper helper) throws Exception {
        if (helper == null) {
            helper = new XMIHelperImpl();
        }
        if (!options.containsKey("DECLARE_XML")) {
            HashMap modifiedOptions = new HashMap(options);
            modifiedOptions.put("DECLARE_XML", Boolean.FALSE);
            options = modifiedOptions;
        }
        XMISaveImpl save = new XMISaveImpl(options, helper, encoding);
        if (Boolean.TRUE.equals(options.get("DEFER_IDREF_RESOLUTION"))) {
            ((XMLHelperImpl)helper).checkForDuplicates = true;
        }
        ((XMLHelperImpl)helper).processDanglingHREF = (String)options.get("PROCESS_DANGLING_HREF");
        save.traverse(contents);
        if (save.useCache) {
            if (save.doc != null) {
                ConfigurationCache.INSTANCE.releasePrinter(save.doc);
            }
            if (save.escape != null) {
                ConfigurationCache.INSTANCE.releaseEscape(save.escape);
            }
        }
        char[] chars = save.toChar();
        return new String(chars);
    }

    public XMLHelperImpl() {
        this.packages = new HashMap<EPackage, String>();
        this.featuresToKinds = new HashMap<EStructuralFeature, Integer>();
        this.prefixesToURIs = new BasicEMap<String, String>(){
            private static final long serialVersionUID = 1L;

            protected List<String> getPrefixes(String uri) {
                List<String> result = XMLHelperImpl.this.urisToPrefixes.get(uri);
                if (result == null) {
                    result = new ArrayList<String>();
                    XMLHelperImpl.this.urisToPrefixes.put(uri, result);
                }
                return result;
            }

            protected void didAdd(BasicEMap.Entry<String, String> entry) {
                this.getPrefixes((String)entry.getValue()).add((String)entry.getKey());
            }

            protected void didClear(BasicEList<BasicEMap.Entry<String, String>>[] oldEntryData) {
                XMLHelperImpl.this.urisToPrefixes.clear();
            }

            protected void didModify(BasicEMap.Entry<String, String> entry, String oldValue) {
                String key = (String)entry.getKey();
                this.getPrefixes(oldValue).remove(key);
                this.getPrefixes((String)entry.getValue()).add(key);
            }

            protected void didRemove(BasicEMap.Entry<String, String> entry) {
                this.getPrefixes((String)entry.getValue()).add((String)entry.getKey());
            }
        };
        this.urisToPrefixes = new HashMap<String, List<String>>();
        this.anyPrefixesToURIs = new HashMap<String, String>();
        this.allPrefixToURI = new ArrayList<String>();
        this.namespaceSupport = new NamespaceSupport();
    }

    public XMLHelperImpl(XMLResource resource) {
        this();
        this.setResource(resource);
    }

    @Override
    public void setOptions(Map<?, ?> options) {
        List roots;
        this.laxFeatureProcessing = Boolean.TRUE.equals(options.get("LAX_FEATURE_PROCESSING"));
        this.uriHandler = (XMLResource.URIHandler)options.get("URI_HANDLER");
        if (this.uriHandler != null) {
            this.uriHandler.setBaseURI(this.resourceURI);
        }
        if ((roots = (List)options.get("ROOT_OBJECTS")) != null) {
            this.roots = roots;
            this.fragmentPrefixes = new String[roots.size()];
            int count = 0;
            for (EObject root : roots) {
                InternalEObject internalEObject = (InternalEObject)root;
                ArrayList<String> uriFragmentPath = new ArrayList<String>();
                InternalEObject container = internalEObject.eInternalContainer();
                while (container != null) {
                    uriFragmentPath.add(container.eURIFragmentSegment(internalEObject.eContainingFeature(), (EObject)internalEObject));
                    internalEObject = container;
                    Resource.Internal resource = container.eDirectResource();
                    if (resource != null) {
                        int index = resource.getContents().indexOf((Object)container);
                        uriFragmentPath.add(index != 0 ? Integer.toString(index) : "");
                        break;
                    }
                    container = internalEObject.eInternalContainer();
                }
                StringBuilder result = new StringBuilder("/");
                int i = uriFragmentPath.size() - 1;
                while (i >= 1) {
                    result.append((String)uriFragmentPath.get(i));
                    result.append('/');
                    --i;
                }
                this.fragmentPrefixes[count++] = result.toString();
            }
        }
    }

    @Override
    public void setNoNamespacePackage(EPackage pkg) {
        this.noNamespacePackage = pkg;
    }

    @Override
    public EPackage getNoNamespacePackage() {
        return this.noNamespacePackage != null ? this.noNamespacePackage : (this.extendedMetaData != null ? this.extendedMetaData.getPackage(null) : null);
    }

    @Override
    public void setXMLMap(XMLResource.XMLMap map) {
        this.xmlMap = map;
        if (map != null && map.getNoNamespacePackage() != null) {
            this.setNoNamespacePackage(map.getNoNamespacePackage());
        }
    }

    @Override
    public XMLResource.XMLMap getXMLMap() {
        return this.xmlMap;
    }

    @Override
    public void setExtendedMetaData(ExtendedMetaData extendedMetaData) {
        this.extendedMetaData = extendedMetaData;
        if (extendedMetaData != null && extendedMetaData.getPackage(null) != null) {
            this.setNoNamespacePackage(extendedMetaData.getPackage(null));
        }
    }

    @Override
    public ExtendedMetaData getExtendedMetaData() {
        return this.extendedMetaData;
    }

    @Override
    public XMLResource getResource() {
        return this.resource;
    }

    public void setResource(XMLResource resource) {
        this.resource = resource;
        if (resource == null) {
            this.resourceURI = null;
            this.deresolve = false;
            this.packageRegistry = EPackage.Registry.INSTANCE;
        } else {
            this.resourceURI = resource.getURI();
            this.deresolve = this.resourceURI != null && !this.resourceURI.isRelative() && this.resourceURI.isHierarchical();
            this.packageRegistry = resource.getResourceSet() == null ? EPackage.Registry.INSTANCE : resource.getResourceSet().getPackageRegistry();
        }
    }

    @Override
    public Object getValue(EObject obj, EStructuralFeature f) {
        return obj.eGet(f, false);
    }

    @Override
    public String getQName(EClass c) {
        XMLResource.XMLInfo clsInfo;
        String name = this.getName((ENamedElement)c);
        if (this.xmlMap != null && (clsInfo = this.xmlMap.getInfo((ENamedElement)c)) != null) {
            String targetNamespace = clsInfo.getTargetNamespace();
            return this.getQName(targetNamespace, name);
        }
        return this.getQName(c.getEPackage(), name);
    }

    @Override
    public void populateNameInfo(NameInfo nameInfo, EClass c) {
        XMLResource.XMLInfo clsInfo;
        String name = this.getName((ENamedElement)c);
        nameInfo.setLocalPart(name);
        if (this.xmlMap != null && (clsInfo = this.xmlMap.getInfo((ENamedElement)c)) != null) {
            String targetNamespace = clsInfo.getTargetNamespace();
            nameInfo.setNamespaceURI(targetNamespace);
            nameInfo.setQualifiedName(this.getQName(targetNamespace, name));
            return;
        }
        this.getQName(nameInfo, c.getEPackage(), name);
    }

    @Override
    public String getQName(EDataType c) {
        XMLResource.XMLInfo clsInfo;
        String name = this.getName((ENamedElement)c);
        if (this.xmlMap != null && (clsInfo = this.xmlMap.getInfo((ENamedElement)c)) != null) {
            String targetNamespace = clsInfo.getTargetNamespace();
            return this.getQName(targetNamespace, name);
        }
        return this.getQName(c.getEPackage(), name);
    }

    @Override
    public void populateNameInfo(NameInfo nameInfo, EDataType eDataType) {
        XMLResource.XMLInfo clsInfo;
        String name = this.getName((ENamedElement)eDataType);
        nameInfo.setLocalPart(name);
        if (this.xmlMap != null && (clsInfo = this.xmlMap.getInfo((ENamedElement)eDataType)) != null) {
            String targetNamespace = clsInfo.getTargetNamespace();
            nameInfo.setNamespaceURI(targetNamespace);
            nameInfo.setQualifiedName(this.getQName(targetNamespace, name));
            return;
        }
        this.getQName(nameInfo, eDataType.getEPackage(), name);
    }

    @Override
    public String getQName(EStructuralFeature feature) {
        XMLResource.XMLInfo info;
        if (this.extendedMetaData != null) {
            String name;
            String namespace = this.extendedMetaData.getNamespace(feature);
            String result = name = this.extendedMetaData.getName(feature);
            if (namespace != null) {
                EPackage ePackage;
                if (namespace.equals(this.previousNS)) {
                    ePackage = this.previousPackage;
                } else {
                    ePackage = this.extendedMetaData.getPackage(namespace);
                    if (ePackage == null) {
                        ePackage = this.extendedMetaData.demandPackage(namespace);
                    }
                    this.previousPackage = ePackage;
                    this.previousNS = namespace;
                }
                result = this.getQName(ePackage, name);
                if (result.length() == name.length() && this.extendedMetaData.getFeatureKind(feature) == 2) {
                    result = this.getQName(ePackage, name, true);
                }
            }
            return result;
        }
        String name = this.getName((ENamedElement)feature);
        if (this.xmlMap != null && (info = this.xmlMap.getInfo((ENamedElement)feature)) != null) {
            return this.getQName(info.getTargetNamespace(), name);
        }
        return name;
    }

    @Override
    public void populateNameInfo(NameInfo nameInfo, EStructuralFeature feature) {
        if (this.extendedMetaData != null) {
            String namespace = this.extendedMetaData.getNamespace(feature);
            String name = this.extendedMetaData.getName(feature);
            nameInfo.setNamespaceURI(namespace);
            nameInfo.setLocalPart(name);
            nameInfo.setQualifiedName(name);
            if (namespace != null) {
                String result;
                EPackage ePackage = this.extendedMetaData.getPackage(namespace);
                if (ePackage == null) {
                    ePackage = this.extendedMetaData.demandPackage(namespace);
                }
                if ((result = this.getQName(nameInfo, ePackage, name)).length() == name.length() && this.extendedMetaData.getFeatureKind(feature) == 2) {
                    this.getQName(nameInfo, ePackage, name, true);
                }
            }
        } else {
            XMLResource.XMLInfo info;
            String name = this.getName((ENamedElement)feature);
            nameInfo.setNamespaceURI(null);
            nameInfo.setLocalPart(name);
            if (this.xmlMap != null && (info = this.xmlMap.getInfo((ENamedElement)feature)) != null) {
                String targetNamespace = info.getTargetNamespace();
                nameInfo.setNamespaceURI(targetNamespace);
                nameInfo.setQualifiedName(this.getQName(targetNamespace, name));
            }
            nameInfo.setQualifiedName(name);
        }
    }

    protected String getQName(NameInfo nameInfo, EPackage ePackage, String name) {
        String qname = this.getQName(nameInfo, ePackage, name, this.mustHavePrefix);
        nameInfo.setQualifiedName(qname);
        return qname;
    }

    protected String getQName(NameInfo nameInfo, EPackage ePackage, String name, boolean mustHavePrefix) {
        String nsPrefix = this.getPrefix(ePackage, mustHavePrefix);
        nameInfo.setNamespaceURI(this.getNamespaceURI(nsPrefix));
        if ("".equals(nsPrefix)) {
            return name;
        }
        if (name.length() == 0) {
            return nsPrefix;
        }
        return String.valueOf(nsPrefix) + ":" + name;
    }

    protected String getQName(EPackage ePackage, String name) {
        return this.getQName(ePackage, name, this.mustHavePrefix);
    }

    protected String getQName(EPackage ePackage, String name, boolean mustHavePrefix) {
        String nsPrefix = this.getPrefix(ePackage, mustHavePrefix);
        if ("".equals(nsPrefix)) {
            return name;
        }
        if (name.length() == 0) {
            return nsPrefix;
        }
        return String.valueOf(nsPrefix) + ":" + name;
    }

    @Override
    public String getPrefix(EPackage ePackage) {
        return this.getPrefix(ePackage, this.mustHavePrefix);
    }

    @Override
    public String getNamespaceURI(String prefix) {
        String namespaceURI = this.namespaceSupport.getURI(prefix);
        if (namespaceURI == null) {
            namespaceURI = (String)this.prefixesToURIs.get((Object)prefix);
        }
        return namespaceURI;
    }

    protected String getPrefix(EPackage ePackage, boolean mustHavePrefix) {
        String nsPrefix = this.packages.get(ePackage);
        if (nsPrefix == null || mustHavePrefix && nsPrefix.length() == 0) {
            String nsURI = this.xmlSchemaTypePackage == ePackage ? "http://www.w3.org/2001/XMLSchema" : (this.extendedMetaData == null ? ePackage.getNsURI() : this.extendedMetaData.getNamespace(ePackage));
            boolean found = false;
            List<String> prefixes = this.urisToPrefixes.get(nsURI);
            if (prefixes != null) {
                Iterator<String> iterator = prefixes.iterator();
                while (iterator.hasNext()) {
                    String prefix;
                    nsPrefix = prefix = iterator.next();
                    if (mustHavePrefix && nsPrefix.length() <= 0) continue;
                    found = true;
                    break;
                }
            }
            if (!found) {
                String currentValue;
                nsPrefix = this.namespaceSupport.getPrefix(nsURI);
                if (nsPrefix != null) {
                    return nsPrefix;
                }
                if (nsURI != null) {
                    String string = nsPrefix = this.xmlSchemaTypePackage == ePackage ? "xsd" : ePackage.getNsPrefix();
                }
                if (nsPrefix == null) {
                    String string = nsPrefix = mustHavePrefix ? "_" : "";
                }
                if (this.prefixesToURIs.containsKey((Object)nsPrefix) && ((currentValue = (String)this.prefixesToURIs.get((Object)nsPrefix)) == null ? nsURI != null : !currentValue.equals(nsURI))) {
                    int index = 1;
                    while (this.prefixesToURIs.containsKey((Object)(String.valueOf(nsPrefix) + "_" + index))) {
                        ++index;
                    }
                    nsPrefix = String.valueOf(nsPrefix) + "_" + index;
                }
                this.prefixesToURIs.put((Object)nsPrefix, (Object)nsURI);
            }
            if (!this.packages.containsKey(ePackage)) {
                this.packages.put(ePackage, nsPrefix);
            }
        }
        return nsPrefix;
    }

    @Override
    public List<String> getPrefixes(EPackage ePackage) {
        UniqueEList result = new UniqueEList();
        result.add(this.getPrefix(ePackage));
        String namespace = this.extendedMetaData == null ? ePackage.getNsURI() : this.extendedMetaData.getNamespace(ePackage);
        List<String> prefixes = this.urisToPrefixes.get(namespace);
        if (prefixes != null) {
            result.addAll(prefixes);
        }
        return result;
    }

    protected String getQName(String uri, String name) {
        EPackage ePackage;
        if (uri == null) {
            EPackage theNoNamespacePackage = this.getNoNamespacePackage();
            if (theNoNamespacePackage != null) {
                this.packages.put(theNoNamespacePackage, "");
            }
            return name;
        }
        EPackage ePackage2 = ePackage = this.extendedMetaData == null ? EPackage.Registry.INSTANCE.getEPackage(uri) : this.extendedMetaData.getPackage(uri);
        if (ePackage == null) {
            if (this.extendedMetaData != null) {
                return this.getQName(this.extendedMetaData.demandPackage(uri), name);
            }
            return name;
        }
        return this.getQName(ePackage, name);
    }

    @Override
    public String getName(ENamedElement obj) {
        String result;
        XMLResource.XMLInfo info;
        if (this.extendedMetaData != null) {
            return obj instanceof EStructuralFeature ? this.extendedMetaData.getName((EStructuralFeature)obj) : this.extendedMetaData.getName((EClassifier)obj);
        }
        if (this.xmlMap != null && (info = this.xmlMap.getInfo(obj)) != null && (result = info.getName()) != null) {
            return result;
        }
        return obj.getName();
    }

    @Override
    public String getID(EObject obj) {
        return this.resource == null ? null : this.resource.getID(obj);
    }

    protected String getURIFragmentQuery(Resource containingResource, EObject object) {
        return null;
    }

    protected String getURIFragment(Resource containingResource, EObject object) {
        if (this.roots != null && containingResource == this.resource && !EcoreUtil.isAncestor(this.roots, (EObject)object)) {
            URI uriResult = this.handleDanglingHREF(object);
            return uriResult == null || !uriResult.hasFragment() ? null : uriResult.fragment();
        }
        String result = containingResource.getURIFragment(object);
        if (result.length() > 0 && result.charAt(0) != '/') {
            String query = this.getURIFragmentQuery(containingResource, object);
            if (query != null) {
                result = String.valueOf(result) + "?" + query + "?";
            }
        } else if ("/-1".equals(result)) {
            if (object.eResource() != containingResource) {
                URI uriResult = this.handleDanglingHREF(object);
                return uriResult == null || !uriResult.hasFragment() ? null : uriResult.fragment();
            }
        } else if (this.fragmentPrefixes != null) {
            int i = 0;
            while (i < this.fragmentPrefixes.length) {
                String fragmentPrefix = this.fragmentPrefixes[i];
                if (result.startsWith(fragmentPrefix)) {
                    result = "/" + (i == 0 ? "" : Integer.toString(i)) + result.substring(fragmentPrefix.length() - 1);
                    break;
                }
                ++i;
            }
        }
        return result;
    }

    @Override
    public String getIDREF(EObject obj) {
        return this.resource == null ? null : this.getURIFragment(this.resource, obj);
    }

    protected URI handleDanglingHREF(EObject object) {
        if (!"DISCARD".equals(this.processDanglingHREF)) {
            DanglingHREFException exception = new DanglingHREFException("The object '" + object + "' is not contained in a resource.", this.resource == null || this.resource.getURI() == null ? "unknown" : this.resource.getURI().toString(), 0, 0);
            if (this.danglingHREFException == null) {
                this.danglingHREFException = exception;
            }
            if (this.resource != null) {
                this.resource.getErrors().add((Object)exception);
            }
        }
        return null;
    }

    @Override
    public String getHREF(EObject obj) {
        InternalEObject o = (InternalEObject)obj;
        URI objectURI = o.eProxyURI();
        if (objectURI == null) {
            Resource otherResource = obj.eResource();
            if (otherResource == null) {
                if (this.resource != null && this.resource.getID(obj) != null) {
                    objectURI = this.getHREF(this.resource, obj);
                } else {
                    objectURI = this.handleDanglingHREF(obj);
                    if (objectURI == null) {
                        return null;
                    }
                }
            } else {
                objectURI = this.getHREF(otherResource, obj);
            }
        }
        objectURI = this.deresolve(objectURI);
        return objectURI.toString();
    }

    protected URI getHREF(Resource otherResource, EObject obj) {
        return otherResource.getURI().appendFragment(this.getURIFragment(otherResource, obj));
    }

    @Override
    public URI deresolve(URI uri) {
        URI deresolvedURI;
        if (this.uriHandler != null) {
            uri = this.uriHandler.deresolve(uri);
        } else if (this.deresolve && !uri.isRelative() && (deresolvedURI = uri.deresolve(this.resourceURI, true, true, false)).hasRelativePath()) {
            uri = deresolvedURI;
        }
        return uri;
    }

    @Override
    public int getFeatureKind(EStructuralFeature feature) {
        Integer kind = this.featuresToKinds.get(feature);
        if (kind != null) {
            return kind;
        }
        this.computeFeatureKind(feature);
        kind = this.featuresToKinds.get(feature);
        if (kind != null) {
            return kind;
        }
        this.featuresToKinds.put(feature, INTEGER_OTHER);
        return 5;
    }

    @Override
    public EObject createObject(EFactory eFactory, EClassifier type) {
        EObject newObject = null;
        if (eFactory != null) {
            EClass eClass;
            if (this.extendedMetaData != null) {
                if (type == null) {
                    return null;
                }
                if (type instanceof EClass) {
                    EClass eClass2 = (EClass)type;
                    if (!eClass2.isAbstract()) {
                        newObject = eFactory.create((EClass)type);
                    }
                } else {
                    SimpleAnyType result = (SimpleAnyType)EcoreUtil.create((EClass)this.anySimpleType);
                    result.setInstanceType((EDataType)type);
                    newObject = result;
                }
            } else if (type != null && !(eClass = (EClass)type).isAbstract()) {
                newObject = eFactory.create((EClass)type);
            }
        }
        return newObject;
    }

    @Override
    public EClassifier getType(EFactory eFactory, String typeName) {
        if (eFactory != null) {
            EPackage ePackage = eFactory.getEPackage();
            if (this.extendedMetaData != null) {
                return this.extendedMetaData.getType(ePackage, typeName);
            }
            EClass eClass = (EClass)ePackage.getEClassifier(typeName);
            if (eClass == null && this.xmlMap != null) {
                return this.xmlMap.getClassifier(ePackage.getNsURI(), typeName);
            }
            return eClass;
        }
        return null;
    }

    @Override
    @Deprecated
    public EObject createObject(EFactory eFactory, String classXMIName) {
        return this.createObject(eFactory, this.getType(eFactory, classXMIName));
    }

    @Override
    public EStructuralFeature getFeature(EClass eClass, String namespaceURI, String name) {
        EStructuralFeature feature = this.getFeatureWithoutMap(eClass, name);
        if (feature == null) {
            if (this.xmlMap != null) {
                feature = this.xmlMap.getFeature(eClass, namespaceURI, name);
                if (feature != null) {
                    this.computeFeatureKind(feature);
                }
            } else if (this.laxFeatureProcessing && this.extendedMetaData != null) {
                EList structuralFeatures = eClass.getEAllStructuralFeatures();
                int i = 0;
                int size = structuralFeatures.size();
                while (i < size) {
                    EStructuralFeature eStructuralFeature = (EStructuralFeature)structuralFeatures.get(i);
                    if (name.equals(this.extendedMetaData.getName(eStructuralFeature)) && (namespaceURI == null ? this.extendedMetaData.getNamespace(eStructuralFeature) == null : namespaceURI.equals(this.extendedMetaData.getNamespace(eStructuralFeature)))) {
                        return eStructuralFeature;
                    }
                    ++i;
                }
            }
        }
        return feature;
    }

    @Override
    public EStructuralFeature getFeature(EClass eClass, String namespaceURI, String name, boolean isElement) {
        if (this.extendedMetaData != null) {
            EStructuralFeature eStructuralFeature;
            if (isElement && namespaceURI == null) {
                this.seenEmptyStringMapping = true;
            }
            EStructuralFeature eStructuralFeature2 = isElement ? this.extendedMetaData.getElement(eClass, namespaceURI, name) : (eStructuralFeature = this.extendedMetaData.getAttribute(eClass, namespaceURI == "" ? null : namespaceURI, name));
            if (eStructuralFeature != null) {
                this.computeFeatureKind(eStructuralFeature);
            } else {
                eStructuralFeature = this.getFeature(eClass, namespaceURI, name);
                if (!this.laxFeatureProcessing && eStructuralFeature != null && this.extendedMetaData.getFeatureKind(eStructuralFeature) != 0) {
                    eStructuralFeature = null;
                }
            }
            return eStructuralFeature;
        }
        return this.getFeature(eClass, namespaceURI, name);
    }

    protected EStructuralFeature getFeatureWithoutMap(EClass eClass, String name) {
        EStructuralFeature feature = eClass.getEStructuralFeature(name);
        if (feature != null) {
            this.computeFeatureKind(feature);
        }
        return feature;
    }

    protected void computeFeatureKind(EStructuralFeature feature) {
        EClassifier eClassifier = feature.getEType();
        if (eClassifier instanceof EDataType) {
            if (feature.isMany()) {
                this.featuresToKinds.put(feature, INTEGER_DATATYPE_IS_MANY);
            } else {
                this.featuresToKinds.put(feature, INTEGER_DATATYPE_SINGLE);
            }
        } else if (feature.isMany()) {
            EReference reference = (EReference)feature;
            EReference opposite = reference.getEOpposite();
            if (opposite == null || opposite.isTransient() || !opposite.isMany()) {
                this.featuresToKinds.put(feature, INTEGER_IS_MANY_ADD);
            } else {
                this.featuresToKinds.put(feature, INTEGER_IS_MANY_MOVE);
            }
        }
    }

    @Override
    public String getJavaEncoding(String xmlEncoding) {
        return xmlEncoding;
    }

    @Override
    public String getXMLEncoding(String javaEncoding) {
        return javaEncoding;
    }

    @Override
    public EPackage[] packages() {
        TreeMap<String, EPackage> map = new TreeMap<String, EPackage>();
        for (EPackage ePackage : this.packages.keySet()) {
            EPackage conflict;
            String prefix = this.getPrefix(ePackage);
            if (prefix == null) {
                prefix = "";
            }
            if ((conflict = map.put(prefix, ePackage)) == null || conflict.eResource() == null) continue;
            map.put(prefix, conflict);
        }
        EPackage[] result = new EPackage[map.size()];
        map.values().toArray(result);
        return result;
    }

    @Override
    public void setValue(EObject object, EStructuralFeature feature, Object value, int position) {
        EStructuralFeature targetFeature;
        if (this.extendedMetaData != null && (targetFeature = this.extendedMetaData.getAffiliation(object.eClass(), feature)) != null && targetFeature != feature) {
            EStructuralFeature group = this.extendedMetaData.getGroup(targetFeature);
            if (group != null) {
                targetFeature = group;
            }
            if (targetFeature.getEType() == EcorePackage.Literals.EFEATURE_MAP_ENTRY) {
                FeatureMap featureMap = (FeatureMap)object.eGet(targetFeature);
                EClassifier eClassifier = feature.getEType();
                if (eClassifier instanceof EDataType) {
                    EDataType eDataType = (EDataType)eClassifier;
                    EFactory eFactory = eDataType.getEPackage().getEFactoryInstance();
                    value = this.createFromString(eFactory, eDataType, (String)value);
                }
                featureMap.add(feature, value);
                return;
            }
            EClassifier eType = feature.getEType();
            if (eType instanceof EDataType && targetFeature instanceof EReference) {
                SimpleAnyType simpleAnyType = (SimpleAnyType)EcoreUtil.create((EClass)this.anySimpleType);
                simpleAnyType.setInstanceType((EDataType)eType);
                simpleAnyType.setRawValue((String)value);
                value = simpleAnyType;
            }
            feature = targetFeature;
        }
        int kind = this.getFeatureKind(feature);
        switch (kind) {
            case 1: 
            case 2: {
                EClassifier eClassifier = feature.getEType();
                EDataType eDataType = (EDataType)eClassifier;
                EFactory eFactory = eDataType.getEPackage().getEFactoryInstance();
                if (kind == 2) {
                    InternalEList list = (InternalEList)object.eGet(feature);
                    if (position == -2) {
                        StringTokenizer stringTokenizer = new StringTokenizer((String)value, " ");
                        while (stringTokenizer.hasMoreTokens()) {
                            String token = stringTokenizer.nextToken();
                            list.addUnique(this.createFromString(eFactory, eDataType, token));
                        }
                        if (!list.isEmpty()) break;
                        list.clear();
                        break;
                    }
                    if (value == null) {
                        list.addUnique(null);
                        break;
                    }
                    list.addUnique(this.createFromString(eFactory, eDataType, (String)value));
                    break;
                }
                if (value == null) {
                    object.eSet(feature, null);
                    break;
                }
                object.eSet(feature, this.createFromString(eFactory, eDataType, (String)value));
                break;
            }
            case 3: 
            case 4: {
                InternalEList list = (InternalEList)object.eGet(feature);
                if (position == -1) {
                    if (object == value) {
                        list.add(value);
                        break;
                    }
                    list.addUnique(value);
                    break;
                }
                if (position == -2) {
                    list.clear();
                    break;
                }
                if (this.checkForDuplicates || object == value) {
                    int index = list.basicIndexOf(value);
                    if (index == -1) {
                        list.addUnique(position, value);
                        break;
                    }
                    list.move(position, index);
                    break;
                }
                if (kind == 3) {
                    list.addUnique(position, value);
                    break;
                }
                list.move(position, value);
                break;
            }
            default: {
                object.eSet(feature, value);
            }
        }
    }

    @Override
    public List<XMIException> setManyReference(XMLHelper.ManyReference reference, String location) {
        EStructuralFeature feature = reference.getFeature();
        int kind = this.getFeatureKind(feature);
        EObject object = reference.getObject();
        InternalEList list = (InternalEList)object.eGet(feature);
        BasicEList xmiExceptions = new BasicEList();
        Object[] values = reference.getValues();
        int[] positions = reference.getPositions();
        if (kind == 3) {
            int i = 0;
            int l = values.length;
            while (i < l) {
                Object value = values[i];
                if (value != null) {
                    int position = positions[i];
                    try {
                        if (this.checkForDuplicates || object == value) {
                            int index = list.basicIndexOf(value);
                            if (index == -1) {
                                list.addUnique(position, value);
                            } else {
                                list.move(position, index);
                            }
                        } else {
                            list.addUnique(position, value);
                        }
                    }
                    catch (RuntimeException e) {
                        xmiExceptions.add(new IllegalValueException(object, feature, value, e, location, reference.getLineNumber(), reference.getColumnNumber()));
                    }
                }
                ++i;
            }
        } else {
            int i = 0;
            int l = values.length;
            while (i < l) {
                Object value = values[i];
                if (value != null) {
                    try {
                        int sourcePosition = list.basicIndexOf(value);
                        if (sourcePosition != -1) {
                            list.move(positions[i], sourcePosition);
                        } else {
                            list.addUnique(positions[i], value);
                        }
                    }
                    catch (RuntimeException e) {
                        xmiExceptions.add(new IllegalValueException(object, feature, value, e, location, reference.getLineNumber(), reference.getColumnNumber()));
                    }
                }
                ++i;
            }
        }
        if (xmiExceptions.isEmpty()) {
            return null;
        }
        return xmiExceptions;
    }

    @Override
    public void setCheckForDuplicates(boolean checkForDuplicates) {
        this.checkForDuplicates = checkForDuplicates;
    }

    @Override
    public void setProcessDanglingHREF(String value) {
        this.processDanglingHREF = value;
    }

    @Override
    public DanglingHREFException getDanglingHREFException() {
        return this.danglingHREFException;
    }

    @Override
    public URI resolve(URI relative, URI base) {
        return this.uriHandler == null ? relative.resolve(base) : this.uriHandler.resolve(relative);
    }

    @Override
    public void pushContext() {
        this.namespaceSupport.pushContext();
    }

    @Override
    public void popContext() {
        this.namespaceSupport.popContext();
    }

    @Override
    public void popContext(Map<String, EFactory> prefixesToFactories) {
        this.namespaceSupport.popContext(prefixesToFactories);
    }

    @Override
    public void addPrefix(String prefix, String uri) {
        if (!"xml".equals(prefix) && !"xmlns".equals(prefix)) {
            uri = uri.length() == 0 ? null : uri;
            this.namespaceSupport.declarePrefix(prefix, uri);
            this.allPrefixToURI.add(prefix);
            this.allPrefixToURI.add(uri);
        }
    }

    @Override
    public String getPrefix(String namespaceURI) {
        return this.namespaceSupport.getPrefix(namespaceURI);
    }

    @Override
    public Map<String, String> getAnyContentPrefixToURIMapping() {
        this.anyPrefixesToURIs.clear();
        int count = this.namespaceSupport.getDeclaredPrefixCount();
        int size = this.allPrefixToURI.size();
        while (count-- > 0) {
            String uri = this.allPrefixToURI.remove(--size);
            String prefix = this.allPrefixToURI.remove(--size);
            this.anyPrefixesToURIs.put(prefix, uri);
        }
        return this.anyPrefixesToURIs;
    }

    @Override
    public String getURI(String prefix) {
        return "xml".equals(prefix) ? "http://www.w3.org/XML/1998/namespace" : ("xmlns".equals(prefix) ? "http://www.w3.org/2000/xmlns/" : this.namespaceSupport.getURI(prefix));
    }

    @Override
    public EMap<String, String> getPrefixToNamespaceMap() {
        return this.prefixesToURIs;
    }

    @Override
    public void recordPrefixToURIMapping() {
        int i = 0;
        int size = this.allPrefixToURI.size();
        while (i < size) {
            String prefix = this.allPrefixToURI.get(i++);
            String uri = this.allPrefixToURI.get(i++);
            String originalURI = (String)this.prefixesToURIs.get((Object)prefix);
            if (uri == null) {
                this.seenEmptyStringMapping = true;
                if (originalURI == null) continue;
                this.prefixesToURIs.removeKey((Object)prefix);
                this.addNSDeclaration(prefix, originalURI);
                continue;
            }
            if (this.seenEmptyStringMapping && prefix.length() == 0) {
                this.addNSDeclaration(prefix, uri);
                continue;
            }
            if (originalURI != null) {
                if (uri.equals(originalURI)) continue;
                this.addNSDeclaration(prefix, uri);
                continue;
            }
            this.prefixesToURIs.put((Object)prefix, (Object)uri);
        }
    }

    @Override
    public void setPrefixToNamespaceMap(EMap<String, String> prefixToNamespaceMap) {
        for (Map.Entry entry : prefixToNamespaceMap) {
            String prefix = (String)entry.getKey();
            String namespace = (String)entry.getValue();
            EPackage ePackage = null;
            if (this.extendedMetaData == null) {
                ePackage = this.packageRegistry.getEPackage(namespace);
            } else {
                ePackage = this.extendedMetaData.getPackage(namespace);
                if (ePackage == null) {
                    ePackage = "http://www.w3.org/2001/XMLSchema".equals(namespace) ? this.xmlSchemaTypePackage : this.extendedMetaData.demandPackage(namespace);
                }
            }
            if (ePackage != null && !this.packages.containsKey(ePackage)) {
                this.packages.put(ePackage, prefix);
            }
            this.prefixesToURIs.put((Object)prefix, (Object)namespace);
        }
    }

    @Override
    public void setAnySimpleType(EClass type) {
        this.anySimpleType = type;
    }

    @Override
    public String convertToString(EFactory factory, EDataType dataType, Object value) {
        if (this.extendedMetaData != null) {
            if (value instanceof List) {
                List list = (List)value;
                for (Object item : list) {
                    this.updateQNamePrefix(factory, dataType, item, true);
                }
                return factory.convertToString(dataType, value);
            }
            return this.updateQNamePrefix(factory, dataType, value, false);
        }
        return factory.convertToString(dataType, value);
    }

    protected Object createFromString(EFactory eFactory, EDataType eDataType, String value) {
        Object obj = eFactory.createFromString(eDataType, value);
        if (this.extendedMetaData != null) {
            if (obj instanceof List) {
                List list = (List)obj;
                int i = 0;
                while (i < list.size()) {
                    Object item = list.get(i);
                    Object replacement = this.updateQNameURI(item);
                    if (replacement != item) {
                        list.set(i, replacement);
                    }
                    ++i;
                }
            } else {
                obj = this.updateQNameURI(obj);
            }
        }
        return obj;
    }

    protected Object updateQNameURI(Object value) {
        if (value instanceof QName) {
            QName qName = (QName)value;
            if (qName.getNamespaceURI().length() != 0) {
                throw new IllegalArgumentException("Curly brace notation is not a syntactically valid serialized representation for the QName '" + qName.toString() + "'");
            }
            String prefix = qName.getPrefix();
            String namespace = this.getURI(prefix);
            if ((qName = new org.eclipse.emf.ecore.xml.type.internal.QName(namespace, qName.getLocalPart(), prefix)).getPrefix().length() > 0 && namespace == null) {
                throw new IllegalArgumentException("The prefix '" + prefix + "' is not declared for the QName '" + qName.toString() + "'");
            }
            if (namespace == null) {
                this.seenEmptyStringMapping = true;
                String uri = (String)this.prefixesToURIs.get((Object)"");
                if (uri != null) {
                    this.prefixesToURIs.put((Object)"", (Object)namespace);
                    this.addNSDeclaration("", uri);
                }
            }
            return qName;
        }
        return value;
    }

    protected String updateQNamePrefix(EFactory factory, EDataType dataType, Object value, boolean list) {
        if (value instanceof QName) {
            QName qName = (QName)value;
            String namespace = qName.getNamespaceURI();
            String localPart = qName.getLocalPart();
            if (namespace.length() == 0) {
                if (value instanceof org.eclipse.emf.ecore.xml.type.internal.QName) {
                    ((org.eclipse.emf.ecore.xml.type.internal.QName)qName).setPrefix("");
                } else if (qName.getPrefix().length() != 0) {
                    throw new IllegalStateException("The null namespace cannot be bound to a non-null prefix '" + qName + "'");
                }
                return localPart;
            }
            String prefix = qName.getPrefix();
            EPackage ePackage = this.extendedMetaData.getPackage(namespace);
            if (ePackage == null) {
                int size = this.extendedMetaData.demandedPackages().size();
                ePackage = this.extendedMetaData.demandPackage(namespace);
                if (prefix.length() != 0 && this.extendedMetaData.demandedPackages().size() > size) {
                    ePackage.setNsPrefix(prefix);
                }
            }
            if (!namespace.equals(this.getNamespaceURI(prefix))) {
                prefix = this.getPrefix(ePackage, true);
                if (value instanceof org.eclipse.emf.ecore.xml.type.internal.QName) {
                    ((org.eclipse.emf.ecore.xml.type.internal.QName)qName).setPrefix(prefix);
                }
            }
            return list ? null : (prefix.length() == 0 ? localPart : String.valueOf(prefix) + ':' + localPart);
        }
        return list ? null : factory.convertToString(dataType, value);
    }

    protected void addNSDeclaration(String prefix, String uri) {
        List<String> existingPrefixes;
        if (uri != null && (existingPrefixes = this.urisToPrefixes.get(uri)) == null) {
            String newPrefix;
            int lowerBound = 0;
            int index = 1;
            while (this.prefixesToURIs.containsKey((Object)(newPrefix = String.valueOf(prefix) + "_" + index))) {
                lowerBound = index;
                index <<= 1;
            }
            if (lowerBound != 0) {
                int upperBound = index;
                while (lowerBound + 1 < upperBound) {
                    index = lowerBound + upperBound >> 1;
                    if (this.prefixesToURIs.containsKey((Object)(String.valueOf(prefix) + "_" + index))) {
                        lowerBound = index;
                        continue;
                    }
                    upperBound = index;
                }
                newPrefix = String.valueOf(prefix) + "_" + (lowerBound + 1);
            }
            this.prefixesToURIs.put((Object)newPrefix, (Object)uri);
        }
    }

    @Override
    public void setMustHavePrefix(boolean mustHavePrefix) {
        this.mustHavePrefix = mustHavePrefix;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class NamespaceSupport {
        protected String[] namespace = new String[32];
        protected int namespaceSize = 0;
        protected int[] context = new int[8];
        protected int currentContext = -1;
        protected String[] prefixes = new String[16];

        protected NamespaceSupport() {
        }

        public void pushContext() {
            if (this.currentContext + 1 == this.context.length) {
                int[] contextarray = new int[this.context.length * 2];
                System.arraycopy(this.context, 0, contextarray, 0, this.context.length);
                this.context = contextarray;
            }
            this.context[++this.currentContext] = this.namespaceSize;
        }

        public void popContext() {
            this.namespaceSize = this.context[this.currentContext--];
        }

        public void popContext(Map<String, EFactory> prefixesToFactories) {
            int oldNamespaceSize = this.namespaceSize;
            int i = this.namespaceSize = this.context[this.currentContext--];
            while (i < oldNamespaceSize) {
                prefixesToFactories.remove(this.namespace[i]);
                i += 2;
            }
        }

        public boolean declarePrefix(String prefix, String uri) {
            int i = this.namespaceSize;
            while (i > this.context[this.currentContext]) {
                if (this.namespace[i - 2].equals(prefix)) {
                    this.namespace[i - 1] = uri;
                    return true;
                }
                i -= 2;
            }
            if (this.namespaceSize == this.namespace.length) {
                String[] namespacearray = new String[this.namespaceSize * 2];
                System.arraycopy(this.namespace, 0, namespacearray, 0, this.namespaceSize);
                this.namespace = namespacearray;
            }
            this.namespace[this.namespaceSize++] = prefix;
            this.namespace[this.namespaceSize++] = uri;
            return false;
        }

        public String getURI(String prefix) {
            int i = this.namespaceSize;
            while (i > 0) {
                if (this.namespace[i - 2].equals(prefix)) {
                    return this.namespace[i - 1];
                }
                i -= 2;
            }
            return null;
        }

        public String getPrefix(String uri) {
            int i = this.namespaceSize;
            while (i > 0) {
                String knownURI = this.namespace[i - 1];
                if ((knownURI != null ? knownURI.equals(uri) : uri == knownURI) && ((knownURI = this.getURI(this.namespace[i - 2])) != null ? knownURI.equals(uri) : uri == knownURI)) {
                    return this.namespace[i - 2];
                }
                i -= 2;
            }
            return null;
        }

        public int getDeclaredPrefixCount() {
            return (this.namespaceSize - this.context[this.currentContext]) / 2;
        }

        public String getDeclaredPrefixAt(int index) {
            return this.namespace[this.context[this.currentContext] + index * 2];
        }
    }
}

