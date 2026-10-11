/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.impl.ResourceImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BinaryResourceImpl
extends ResourceImpl {
    public static final String OPTION_VERSION = "VERSION";
    public static final String OPTION_STYLE_BINARY_FLOATING_POINT = "BINARY_FLOATING_POINT ";
    public static final String OPTION_STYLE_BINARY_DATE = "BINARY_DATE";
    public static final String OPTION_STYLE_PROXY_ATTRIBUTES = "PROXY_ATTRIBUTES";
    public static final String OPTION_BUFFER_CAPACITY = "BUFFER_CAPACITY";
    public static final int DEFAULT_BUFFER_CAPACITY = 1024;

    public static int getBufferCapacity(Map<?, ?> options) {
        Integer capacity;
        if (options != null && (capacity = (Integer)options.get(OPTION_BUFFER_CAPACITY)) != null) {
            return capacity;
        }
        return 1024;
    }

    public BinaryResourceImpl() {
    }

    public BinaryResourceImpl(URI uri) {
        super(uri);
    }

    @Override
    protected void doSave(OutputStream outputStream, Map<?, ?> options) throws IOException {
        if (outputStream instanceof URIConverter.Saveable) {
            ((URIConverter.Saveable)((Object)outputStream)).saveResource(this);
        } else {
            boolean buffer;
            boolean bl = buffer = !(outputStream instanceof BufferedOutputStream);
            if (buffer) {
                int bufferCapacity = BinaryResourceImpl.getBufferCapacity(options);
                if (bufferCapacity > 0) {
                    outputStream = new BufferedOutputStream(outputStream, bufferCapacity);
                } else {
                    buffer = false;
                }
            }
            try {
                EObjectOutputStream eObjectOutputStream = new EObjectOutputStream(outputStream, options);
                eObjectOutputStream.saveResource(this);
            }
            finally {
                if (buffer) {
                    outputStream.flush();
                }
            }
        }
    }

    @Override
    protected void doLoad(InputStream inputStream, Map<?, ?> options) throws IOException {
        if (inputStream instanceof URIConverter.Loadable) {
            ((URIConverter.Loadable)((Object)inputStream)).loadResource(this);
        } else {
            int bufferCapacity;
            if (!(inputStream instanceof BufferedInputStream) && (bufferCapacity = BinaryResourceImpl.getBufferCapacity(options)) > 0) {
                inputStream = new BufferedInputStream(inputStream, bufferCapacity);
            }
            EObjectInputStream eObjectInputStream = new EObjectInputStream(inputStream, options);
            eObjectInputStream.loadResource(this);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class BinaryIO {
        public static final int STYLE_BINARY_FLOATING_POINT = 1;
        public static final int STYLE_BINARY_DATE = 2;
        public static final int STYLE_PROXY_ATTRIBUTES = 4;
        protected Version version;
        protected int style;
        protected Resource resource;
        protected URI baseURI;
        protected Map<?, ?> options;
        protected char[] characters;
        protected InternalEObject[][] internalEObjectDataArrayBuffer = new InternalEObject[50][];
        protected int internalEObjectDataArrayBufferCount = -1;
        protected FeatureMap.Entry.Internal[][] featureMapEntryDataArrayBuffer = new FeatureMap.Entry.Internal[50][];
        protected int featureMapEntryDataArrayBufferCount = -1;

        protected static int getStyle(Map<?, ?> options) {
            int result = 1;
            if (options != null) {
                if (Boolean.FALSE.equals(options.get(BinaryResourceImpl.OPTION_STYLE_BINARY_FLOATING_POINT))) {
                    result &= 0xFFFFFFFE;
                }
                if (Boolean.TRUE.equals(options.get(BinaryResourceImpl.OPTION_STYLE_BINARY_DATE))) {
                    result |= 2;
                }
                if (Boolean.TRUE.equals(options.get(BinaryResourceImpl.OPTION_STYLE_PROXY_ATTRIBUTES))) {
                    result |= 4;
                }
            }
            return result;
        }

        protected URI resolve(URI uri) {
            return this.baseURI != null && uri.isRelative() && uri.hasRelativePath() ? uri.resolve(this.baseURI) : uri;
        }

        protected URI deresolve(URI uri) {
            URI deresolvedURI;
            if (this.baseURI != null && !uri.isRelative() && (deresolvedURI = uri.deresolve(this.baseURI, true, true, false)).hasRelativePath() && (!uri.isPlatform() || uri.segment(0).equals(this.baseURI.segment(0)))) {
                uri = deresolvedURI;
            }
            return uri;
        }

        protected InternalEObject[] allocateInternalEObjectArray(int length) {
            if (this.internalEObjectDataArrayBufferCount == -1) {
                return new InternalEObject[length];
            }
            InternalEObject[] buffer = this.internalEObjectDataArrayBuffer[this.internalEObjectDataArrayBufferCount];
            this.internalEObjectDataArrayBuffer[this.internalEObjectDataArrayBufferCount--] = null;
            return buffer.length >= length ? buffer : new InternalEObject[length];
        }

        protected void recycle(InternalEObject[] values) {
            if (++this.internalEObjectDataArrayBufferCount >= this.internalEObjectDataArrayBuffer.length) {
                InternalEObject[][] newInternalEObjectDataArrayBuffer = new InternalEObject[this.internalEObjectDataArrayBufferCount * 2][];
                System.arraycopy(this.internalEObjectDataArrayBuffer, 0, newInternalEObjectDataArrayBuffer, 0, this.internalEObjectDataArrayBufferCount);
                this.internalEObjectDataArrayBuffer = newInternalEObjectDataArrayBuffer;
            }
            this.internalEObjectDataArrayBuffer[this.internalEObjectDataArrayBufferCount] = values;
        }

        protected FeatureMap.Entry.Internal[] allocateFeatureMapEntryArray(int length) {
            if (this.featureMapEntryDataArrayBufferCount == -1) {
                return new FeatureMap.Entry.Internal[length];
            }
            FeatureMap.Entry.Internal[] buffer = this.featureMapEntryDataArrayBuffer[this.featureMapEntryDataArrayBufferCount];
            this.featureMapEntryDataArrayBuffer[this.featureMapEntryDataArrayBufferCount--] = null;
            return buffer.length >= length ? buffer : new FeatureMap.Entry.Internal[length];
        }

        protected void recycle(FeatureMap.Entry.Internal[] values) {
            if (++this.featureMapEntryDataArrayBufferCount >= this.featureMapEntryDataArrayBuffer.length) {
                FeatureMap.Entry.Internal[][] newFeatureMapEntryDataArrayBuffer = new FeatureMap.Entry.Internal[this.featureMapEntryDataArrayBufferCount * 2][];
                System.arraycopy(this.featureMapEntryDataArrayBuffer, 0, newFeatureMapEntryDataArrayBuffer, 0, this.featureMapEntryDataArrayBufferCount);
                this.featureMapEntryDataArrayBuffer = newFeatureMapEntryDataArrayBuffer;
            }
            this.featureMapEntryDataArrayBuffer[this.featureMapEntryDataArrayBufferCount] = values;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        protected static enum FeatureKind {
            EOBJECT_CONTAINER,
            EOBJECT_CONTAINER_PROXY_RESOLVING,
            EOBJECT,
            EOBJECT_PROXY_RESOLVING,
            EOBJECT_LIST,
            EOBJECT_LIST_PROXY_RESOLVING,
            EOBJECT_CONTAINMENT,
            EOBJECT_CONTAINMENT_PROXY_RESOLVING,
            EOBJECT_CONTAINMENT_LIST,
            EOBJECT_CONTAINMENT_LIST_PROXY_RESOLVING,
            BOOLEAN,
            BYTE,
            CHAR,
            DOUBLE,
            FLOAT,
            INT,
            LONG,
            SHORT,
            STRING,
            DATE,
            DATA,
            DATA_LIST,
            FEATURE_MAP;


            public static FeatureKind get(EStructuralFeature eStructuralFeature) {
                if (eStructuralFeature instanceof EReference) {
                    EReference eReference = (EReference)eStructuralFeature;
                    if (eReference.isContainment()) {
                        if (eReference.isResolveProxies()) {
                            if (eReference.isMany()) {
                                return EOBJECT_CONTAINMENT_LIST_PROXY_RESOLVING;
                            }
                            return EOBJECT_CONTAINMENT_PROXY_RESOLVING;
                        }
                        if (eReference.isMany()) {
                            return EOBJECT_CONTAINMENT_LIST;
                        }
                        return EOBJECT_CONTAINMENT;
                    }
                    if (eReference.isContainer()) {
                        if (eReference.isResolveProxies()) {
                            return EOBJECT_CONTAINER_PROXY_RESOLVING;
                        }
                        return EOBJECT_CONTAINER;
                    }
                    if (eReference.isResolveProxies()) {
                        if (eReference.isMany()) {
                            return EOBJECT_LIST_PROXY_RESOLVING;
                        }
                        return EOBJECT_PROXY_RESOLVING;
                    }
                    if (eReference.isMany()) {
                        return EOBJECT_LIST;
                    }
                    return EOBJECT;
                }
                EAttribute eAttribute = (EAttribute)eStructuralFeature;
                EDataType eDataType = eAttribute.getEAttributeType();
                String instanceClassName = eDataType.getInstanceClassName();
                if (instanceClassName == "org.eclipse.emf.ecore.util.FeatureMap$Entry") {
                    return FEATURE_MAP;
                }
                if (eAttribute.isMany()) {
                    return DATA_LIST;
                }
                if (instanceClassName == "java.lang.String") {
                    return STRING;
                }
                if (instanceClassName == "boolean") {
                    return BOOLEAN;
                }
                if (instanceClassName == "byte") {
                    return BYTE;
                }
                if (instanceClassName == "char") {
                    return CHAR;
                }
                if (instanceClassName == "double") {
                    return DOUBLE;
                }
                if (instanceClassName == "float") {
                    return FLOAT;
                }
                if (instanceClassName == "int") {
                    return INT;
                }
                if (instanceClassName == "long") {
                    return LONG;
                }
                if (instanceClassName == "short") {
                    return SHORT;
                }
                if (instanceClassName == "java.util.Date") {
                    return DATE;
                }
                return DATA;
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static enum Version {
            VERSION_1_0,
            VERSION_1_1;

        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class EObjectInputStream
    extends BinaryIO {
        protected ResourceSet resourceSet;
        protected InputStream inputStream;
        protected List<EPackageData> ePackageDataList = new ArrayList<EPackageData>();
        protected List<EClassData> eClassDataList = new ArrayList<EClassData>();
        protected List<InternalEObject> eObjectList = new ArrayList<InternalEObject>();
        protected List<URI> uriList = new ArrayList<URI>();
        protected BasicEList<InternalEObject> internalEObjectList = new BasicEList();
        protected BasicEList<Object> dataValueList = new BasicEList();
        protected int[][] intDataArrayBuffer = new int[50][];
        protected int intDataArrayBufferCount = -1;

        public EObjectInputStream(InputStream inputStream, Map<?, ?> options) throws IOException {
            this.inputStream = inputStream;
            this.options = options;
            this.readSignature();
            this.readVersion();
            if (this.version.ordinal() > 0) {
                this.readStyle();
            } else {
                this.style = 1;
            }
        }

        protected void readSignature() throws IOException {
            if (this.readByte() != -119 || this.readByte() != 101 || this.readByte() != 109 || this.readByte() != 102 || this.readByte() != 10 || this.readByte() != 13 || this.readByte() != 26 || this.readByte() != 10) {
                throw new IOException("Invalid signature for a binary EMF serialization");
            }
        }

        protected void readVersion() throws IOException {
            this.version = BinaryIO.Version.values()[this.readByte()];
        }

        protected void readStyle() throws IOException {
            this.style = this.readInt();
        }

        protected int[] allocateIntArray(int length) {
            if (this.intDataArrayBufferCount == -1) {
                return new int[length];
            }
            int[] buffer = this.intDataArrayBuffer[this.intDataArrayBufferCount];
            this.intDataArrayBuffer[this.intDataArrayBufferCount--] = null;
            return buffer.length >= length ? buffer : new int[length];
        }

        protected void recycle(int[] values) {
            if (++this.intDataArrayBufferCount >= this.intDataArrayBuffer.length) {
                int[][] newIntDataArrayBuffer = new int[this.intDataArrayBufferCount * 2][];
                System.arraycopy(this.intDataArrayBuffer, 0, newIntDataArrayBuffer, 0, this.intDataArrayBufferCount);
                this.intDataArrayBuffer = newIntDataArrayBuffer;
            }
            this.intDataArrayBuffer[this.intDataArrayBufferCount] = values;
        }

        protected EPackageData readEPackage() throws IOException {
            int id = this.readCompressedInt();
            if (this.ePackageDataList.size() <= id) {
                EPackageData ePackageData = new EPackageData();
                String nsURI = this.readString();
                URI uri = this.readURI();
                if (this.resourceSet != null) {
                    ePackageData.ePackage = EPackage.Registry.INSTANCE.getEPackage(nsURI);
                    if (ePackageData.ePackage == null) {
                        ePackageData.ePackage = (EPackage)this.resourceSet.getEObject(uri, true);
                    }
                } else {
                    ePackageData.ePackage = EPackage.Registry.INSTANCE.getEPackage(nsURI);
                }
                ePackageData.eClassData = new EClassData[ePackageData.ePackage.getEClassifiers().size()];
                this.ePackageDataList.add(ePackageData);
                return ePackageData;
            }
            return this.ePackageDataList.get(id);
        }

        protected EClassData readEClass() throws IOException {
            EPackageData ePackageData = this.readEPackage();
            int id = this.readCompressedInt();
            EClassData eClassData = ePackageData.eClassData[id];
            if (eClassData == null) {
                eClassData = ePackageData.eClassData[id] = new EClassData();
                String name = this.readString();
                eClassData.eClass = (EClass)ePackageData.ePackage.getEClassifier(name);
                eClassData.eFactory = ePackageData.ePackage.getEFactoryInstance();
                eClassData.eStructuralFeatureData = new EStructuralFeatureData[eClassData.eClass.getFeatureCount()];
            }
            return eClassData;
        }

        protected EStructuralFeatureData readEStructuralFeature() throws IOException {
            EClassData eClassData = this.readEClass();
            int featureID = this.readCompressedInt();
            return this.getEStructuralFeatureData(eClassData, featureID);
        }

        protected EStructuralFeatureData getEStructuralFeatureData(EClassData eClassData, int featureID) throws IOException {
            EStructuralFeatureData eStructuralFeatureData = eClassData.eStructuralFeatureData[featureID];
            if (eStructuralFeatureData == null) {
                eStructuralFeatureData = eClassData.eStructuralFeatureData[featureID] = new EStructuralFeatureData();
                String name = this.readString();
                eStructuralFeatureData.eStructuralFeature = eClassData.eClass.getEStructuralFeature(name);
                eStructuralFeatureData.featureID = eClassData.eClass.getFeatureID(eStructuralFeatureData.eStructuralFeature);
                eStructuralFeatureData.kind = BinaryIO.FeatureKind.get(eStructuralFeatureData.eStructuralFeature);
                if (eStructuralFeatureData.eStructuralFeature instanceof EAttribute) {
                    EAttribute eAttribute = (EAttribute)eStructuralFeatureData.eStructuralFeature;
                    eStructuralFeatureData.eDataType = eAttribute.getEAttributeType();
                    eStructuralFeatureData.eFactory = eStructuralFeatureData.eDataType.getEPackage().getEFactoryInstance();
                }
            }
            return eStructuralFeatureData;
        }

        public void loadResource(Resource resource) throws IOException {
            this.resource = resource;
            this.resourceSet = resource.getResourceSet();
            URI uri = resource.getURI();
            if (uri != null && uri.isHierarchical() && !uri.isRelative()) {
                this.baseURI = uri;
            }
            int size = this.readCompressedInt();
            Object[] values = this.allocateInternalEObjectArray(size);
            int i = 0;
            while (i < size) {
                values[i] = this.loadEObject();
                ++i;
            }
            this.internalEObjectList.setData(size, values);
            InternalEList internalEObjects = (InternalEList)resource.getContents();
            internalEObjects.addAllUnique(this.internalEObjectList);
            this.recycle((InternalEObject[])values);
        }

        public void loadEObjects(InternalEList<InternalEObject> internalEObjects) throws IOException {
            int size = this.readCompressedInt();
            Object[] values = this.allocateInternalEObjectArray(size);
            int i = 0;
            while (i < size) {
                values[i] = this.loadEObject();
                ++i;
            }
            int existingSize = internalEObjects.size();
            if (existingSize == 0) {
                this.internalEObjectList.setData(size, values);
                internalEObjects.addAllUnique((Collection<InternalEObject>)this.internalEObjectList);
            } else {
                InternalEObject[] existingValues = this.allocateInternalEObjectArray(existingSize);
                internalEObjects.basicToArray(existingValues);
                int[] indices = this.allocateIntArray(existingSize);
                int duplicateCount = 0;
                int i2 = 0;
                while (i2 < size) {
                    block10: {
                        Object internalEObject = values[i2];
                        int j = 0;
                        int count = 0;
                        while (j < existingSize) {
                            InternalEObject existingInternalEObject = existingValues[j];
                            if (existingInternalEObject == internalEObject) {
                                if (duplicateCount != count) {
                                    internalEObjects.move(duplicateCount, count);
                                }
                                indices[duplicateCount] = i2;
                                ++count;
                                ++duplicateCount;
                                existingValues[j] = null;
                                break block10;
                            }
                            if (existingInternalEObject != null) {
                                ++count;
                            }
                            ++j;
                        }
                        values[i2 - duplicateCount] = internalEObject;
                    }
                    ++i2;
                }
                this.internalEObjectList.setData(size -= existingSize, values);
                internalEObjects.addAllUnique(0, (Collection<InternalEObject>)this.internalEObjectList);
                i2 = 0;
                while (i2 < existingSize) {
                    int newPosition = indices[i2];
                    int oldPosition = size + i2;
                    if (newPosition != oldPosition) {
                        internalEObjects.move(newPosition, oldPosition);
                    }
                    ++i2;
                }
                this.recycle(existingValues);
                this.recycle(indices);
            }
            this.recycle((InternalEObject[])values);
        }

        public void loadFeatureMap(FeatureMap.Internal featureMap) throws IOException {
            int size = this.readCompressedInt();
            Object[] values = this.allocateFeatureMapEntryArray(size);
            int i = 0;
            while (i < size) {
                values[i] = this.loadFeatureMapEntry();
                ++i;
            }
            int existingSize = featureMap.size();
            if (existingSize == 0) {
                featureMap.addAllUnique((FeatureMap.Entry.Internal[])values, 0, size);
            } else {
                Object[] existingValues = this.allocateFeatureMapEntryArray(existingSize);
                featureMap.basicToArray(existingValues);
                int[] indices = this.allocateIntArray(existingSize);
                int duplicateCount = 0;
                int i2 = 0;
                while (i2 < size) {
                    block10: {
                        FeatureMap.Entry.Internal entry = values[i2];
                        int j = 0;
                        int count = 0;
                        while (j < existingSize) {
                            Object existingEntry = existingValues[j];
                            if (entry.equals(existingEntry)) {
                                if (duplicateCount != count) {
                                    featureMap.move(duplicateCount, count);
                                }
                                indices[duplicateCount] = i2;
                                ++count;
                                ++duplicateCount;
                                existingValues[j] = null;
                                break block10;
                            }
                            if (existingEntry != null) {
                                ++count;
                            }
                            ++j;
                        }
                        values[i2 - duplicateCount] = entry;
                    }
                    ++i2;
                }
                this.internalEObjectList.setData(size -= existingSize, values);
                featureMap.addAllUnique(0, (FeatureMap.Entry.Internal[])values, 0, size);
                i2 = 0;
                while (i2 < existingSize) {
                    int newPosition = indices[i2];
                    int oldPosition = size + i2;
                    if (newPosition != oldPosition) {
                        featureMap.move(newPosition, oldPosition);
                    }
                    ++i2;
                }
                this.recycle((FeatureMap.Entry.Internal[])existingValues);
                this.recycle(indices);
            }
            this.recycle((FeatureMap.Entry.Internal[])values);
        }

        public FeatureMap.Entry.Internal loadFeatureMapEntry() throws IOException {
            Object value;
            EStructuralFeatureData eStructuralFeatureData = this.readEStructuralFeature();
            switch (eStructuralFeatureData.kind) {
                case EOBJECT_CONTAINER: 
                case EOBJECT_CONTAINER_PROXY_RESOLVING: 
                case EOBJECT: 
                case EOBJECT_PROXY_RESOLVING: 
                case EOBJECT_LIST: 
                case EOBJECT_LIST_PROXY_RESOLVING: 
                case EOBJECT_CONTAINMENT: 
                case EOBJECT_CONTAINMENT_PROXY_RESOLVING: 
                case EOBJECT_CONTAINMENT_LIST: 
                case EOBJECT_CONTAINMENT_LIST_PROXY_RESOLVING: {
                    value = this.loadEObject();
                    break;
                }
                case STRING: {
                    value = this.readString();
                    break;
                }
                case DATE: {
                    if ((this.style & 2) != 0) {
                        value = this.readDate();
                        break;
                    }
                }
                case DATA: 
                case DATA_LIST: {
                    String literal = this.readString();
                    value = eStructuralFeatureData.eFactory.createFromString(eStructuralFeatureData.eDataType, literal);
                    break;
                }
                case BOOLEAN: {
                    value = this.readBoolean();
                    break;
                }
                case BYTE: {
                    value = this.readByte();
                    break;
                }
                case CHAR: {
                    value = Character.valueOf(this.readChar());
                    break;
                }
                case DOUBLE: {
                    value = this.readDouble();
                    break;
                }
                case FLOAT: {
                    value = Float.valueOf(this.readFloat());
                    break;
                }
                case INT: {
                    value = this.readInt();
                    break;
                }
                case LONG: {
                    value = this.readLong();
                    break;
                }
                case SHORT: {
                    value = this.readShort();
                    break;
                }
                default: {
                    throw new IOException("Unhandled case " + (Object)((Object)eStructuralFeatureData.kind));
                }
            }
            return FeatureMapUtil.createRawEntry(eStructuralFeatureData.eStructuralFeature, value);
        }

        public InternalEObject loadEObject() throws IOException {
            int id = this.readCompressedInt();
            if (id == -1) {
                return null;
            }
            if (this.eObjectList.size() <= id) {
                int featureID;
                EClassData eClassData = this.readEClass();
                InternalEObject internalEObject = (InternalEObject)eClassData.eFactory.create(eClassData.eClass);
                this.eObjectList.add(internalEObject);
                while ((featureID = this.readCompressedInt() - 1) != -1) {
                    if (featureID == -2) {
                        internalEObject.eSetProxyURI(this.readURI());
                        if ((this.style & 4) != 0) continue;
                        break;
                    }
                    EStructuralFeatureData eStructuralFeatureData = this.getEStructuralFeatureData(eClassData, featureID);
                    this.loadFeatureValue(internalEObject, eStructuralFeatureData);
                }
                return internalEObject;
            }
            return this.eObjectList.get(id);
        }

        protected void loadFeatureValue(InternalEObject internalEObject, EStructuralFeatureData eStructuralFeatureData) throws IOException {
            switch (eStructuralFeatureData.kind) {
                case EOBJECT_CONTAINER: 
                case EOBJECT_CONTAINER_PROXY_RESOLVING: 
                case EOBJECT: 
                case EOBJECT_PROXY_RESOLVING: 
                case EOBJECT_CONTAINMENT: 
                case EOBJECT_CONTAINMENT_PROXY_RESOLVING: {
                    internalEObject.eSet(eStructuralFeatureData.featureID, (Object)this.loadEObject());
                    break;
                }
                case EOBJECT_LIST: 
                case EOBJECT_LIST_PROXY_RESOLVING: 
                case EOBJECT_CONTAINMENT_LIST: 
                case EOBJECT_CONTAINMENT_LIST_PROXY_RESOLVING: {
                    InternalEList internalEList = (InternalEList)internalEObject.eGet(eStructuralFeatureData.featureID, false, true);
                    this.loadEObjects(internalEList);
                    break;
                }
                case STRING: {
                    internalEObject.eSet(eStructuralFeatureData.featureID, (Object)this.readString());
                    break;
                }
                case FEATURE_MAP: {
                    FeatureMap.Internal featureMap = (FeatureMap.Internal)internalEObject.eGet(eStructuralFeatureData.featureID, false, true);
                    this.loadFeatureMap(featureMap);
                    break;
                }
                case DATE: {
                    if ((this.style & 2) != 0) {
                        internalEObject.eSet(eStructuralFeatureData.featureID, (Object)this.readDate());
                        break;
                    }
                }
                case DATA: {
                    String literal = this.readString();
                    internalEObject.eSet(eStructuralFeatureData.featureID, eStructuralFeatureData.eFactory.createFromString(eStructuralFeatureData.eDataType, literal));
                    break;
                }
                case DATA_LIST: {
                    int size = this.readCompressedInt();
                    this.dataValueList.grow(size);
                    Object[] dataValues = this.dataValueList.data();
                    int i = 0;
                    while (i < size) {
                        String literal = this.readString();
                        dataValues[i] = eStructuralFeatureData.eFactory.createFromString(eStructuralFeatureData.eDataType, literal);
                        ++i;
                    }
                    this.dataValueList.setData(size, dataValues);
                    List values = (List)internalEObject.eGet(eStructuralFeatureData.featureID, false, true);
                    values.addAll(this.dataValueList);
                    break;
                }
                case BOOLEAN: {
                    internalEObject.eSet(eStructuralFeatureData.featureID, (Object)this.readBoolean());
                    break;
                }
                case BYTE: {
                    internalEObject.eSet(eStructuralFeatureData.featureID, (Object)this.readByte());
                    break;
                }
                case CHAR: {
                    internalEObject.eSet(eStructuralFeatureData.featureID, (Object)Character.valueOf(this.readChar()));
                    break;
                }
                case DOUBLE: {
                    internalEObject.eSet(eStructuralFeatureData.featureID, (Object)this.readDouble());
                    break;
                }
                case FLOAT: {
                    internalEObject.eSet(eStructuralFeatureData.featureID, (Object)Float.valueOf(this.readFloat()));
                    break;
                }
                case INT: {
                    internalEObject.eSet(eStructuralFeatureData.featureID, (Object)this.readInt());
                    break;
                }
                case LONG: {
                    internalEObject.eSet(eStructuralFeatureData.featureID, (Object)this.readLong());
                    break;
                }
                case SHORT: {
                    internalEObject.eSet(eStructuralFeatureData.featureID, (Object)this.readShort());
                    break;
                }
                default: {
                    throw new IOException("Unhandled case " + (Object)((Object)eStructuralFeatureData.kind));
                }
            }
        }

        public byte readByte() throws IOException {
            int result = this.inputStream.read();
            if (result == -1) {
                throw new IOException("Unexpected end of stream");
            }
            return (byte)result;
        }

        public boolean readBoolean() throws IOException {
            return this.readByte() != 0;
        }

        public char readChar() throws IOException {
            return (char)(this.readByte() << 8 & 0xFF00 | this.readByte() & 0xFF);
        }

        public short readShort() throws IOException {
            return (short)(this.readByte() << 8 & 0xFF00 | this.readByte() & 0xFF);
        }

        public int readInt() throws IOException {
            return this.readByte() << 24 | this.readByte() << 16 & 0xFF0000 | this.readByte() << 8 & 0xFF00 | this.readByte() & 0xFF;
        }

        public long readLong() throws IOException {
            return (long)this.readInt() << 32 | (long)this.readInt() & 0xFFFFFFFFL;
        }

        public float readFloat() throws IOException {
            if ((this.style & 1) != 0) {
                return Float.intBitsToFloat(this.readInt());
            }
            return Float.parseFloat(this.readString());
        }

        public double readDouble() throws IOException {
            if ((this.style & 1) != 0) {
                return Double.longBitsToDouble(this.readLong());
            }
            return Double.parseDouble(this.readString());
        }

        public int readCompressedInt() throws IOException {
            byte initialByte = this.readByte();
            int code = initialByte >> 6 & 3;
            switch (code) {
                case 0: {
                    return initialByte - 1;
                }
                case 1: {
                    return (initialByte << 8 & 0x3F00 | this.readByte() & 0xFF) - 1;
                }
                case 2: {
                    return (initialByte << 16 & 0x3F0000 | this.readByte() << 8 & 0xFF00 | this.readByte() & 0xFF) - 1;
                }
            }
            return (initialByte << 24 & 0x3F000000 | this.readByte() << 16 & 0xFF0000 | this.readByte() << 8 & 0xFF00 | this.readByte() & 0xFF) - 1;
        }

        public String readString() throws IOException {
            int length = this.readCompressedInt();
            if (length == -1) {
                return null;
            }
            if (this.characters == null || this.characters.length < length) {
                this.characters = new char[length];
            }
            int i = 0;
            while (i < length) {
                byte value = this.readByte();
                if (value == 0) {
                    do {
                        this.characters[i] = this.readChar();
                    } while (++i < length);
                    break;
                }
                this.characters[i] = (char)(value & 0xFF);
                ++i;
            }
            return new String(this.characters, 0, length);
        }

        public Date readDate() throws IOException {
            long time = this.readLong();
            return new Date(time);
        }

        public URI readURI() throws IOException {
            URI uri;
            int id = this.readCompressedInt();
            if (id == -1) {
                return null;
            }
            if (this.uriList.size() <= id) {
                String value = this.readString();
                uri = this.resolve(URI.createURI((String)value));
                this.uriList.add(uri);
            } else {
                uri = this.uriList.get(id);
            }
            String fragment = this.readString();
            if (fragment != null) {
                uri = uri.appendFragment(fragment);
            }
            return uri;
        }

        protected static class EClassData {
            public EClass eClass;
            public EFactory eFactory;
            public EStructuralFeatureData[] eStructuralFeatureData;

            protected EClassData() {
            }
        }

        protected static class EPackageData {
            public EPackage ePackage;
            public EClassData[] eClassData;

            protected EPackageData() {
            }

            public final int allocateEClassID() {
                int i = 0;
                int length = this.eClassData.length;
                while (i < length) {
                    EClassData eClassData = this.eClassData[i];
                    if (eClassData == null) {
                        return i;
                    }
                    ++i;
                }
                return -1;
            }
        }

        protected static class EStructuralFeatureData {
            public int featureID;
            public EStructuralFeature eStructuralFeature;
            public BinaryIO.FeatureKind kind;
            public EFactory eFactory;
            public EDataType eDataType;

            protected EStructuralFeatureData() {
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class EObjectOutputStream
    extends BinaryIO {
        protected OutputStream outputStream;
        protected Map<EPackage, EPackageData> ePackageDataMap = new HashMap<EPackage, EPackageData>();
        protected Map<EClass, EClassData> eClassDataMap = new HashMap<EClass, EClassData>();
        protected Map<EObject, Integer> eObjectIDMap = new HashMap<EObject, Integer>();
        protected Map<URI, Integer> uriToIDMap = new HashMap<URI, Integer>();

        public EObjectOutputStream(OutputStream outputStream, Map<?, ?> options) throws IOException {
            this(outputStream, options, options != null && options.containsKey(BinaryResourceImpl.OPTION_VERSION) ? (BinaryIO.Version)((Object)options.get(BinaryResourceImpl.OPTION_VERSION)) : BinaryIO.Version.VERSION_1_0);
        }

        public EObjectOutputStream(OutputStream outputStream, Map<?, ?> options, BinaryIO.Version version) throws IOException {
            this(outputStream, options, version, version.ordinal() > 0 ? EObjectOutputStream.getStyle(options) : 1);
        }

        public EObjectOutputStream(OutputStream outputStream, Map<?, ?> options, BinaryIO.Version version, int style) throws IOException {
            this.outputStream = outputStream;
            this.options = options;
            this.version = version;
            this.style = style;
            this.writeSignature();
            this.writeVersion();
            if (version.ordinal() > 0) {
                this.writeStyle();
            }
        }

        protected void writeSignature() throws IOException {
            this.writeByte(137);
            this.writeByte(101);
            this.writeByte(109);
            this.writeByte(102);
            this.writeByte(10);
            this.writeByte(13);
            this.writeByte(26);
            this.writeByte(10);
        }

        protected void writeVersion() throws IOException {
            this.writeByte(this.version.ordinal());
        }

        protected void writeStyle() throws IOException {
            this.writeInt(this.style);
        }

        protected EPackageData writeEPackage(EPackage ePackage) throws IOException {
            EPackageData ePackageData = this.ePackageDataMap.get(ePackage);
            if (ePackageData == null) {
                int id;
                ePackageData = new EPackageData();
                ePackageData.id = id = this.ePackageDataMap.size();
                ePackageData.eClassData = new EClassData[ePackage.getEClassifiers().size()];
                this.writeCompressedInt(id);
                this.writeString(ePackage.getNsURI());
                this.writeURI(EcoreUtil.getURI(ePackage));
                this.ePackageDataMap.put(ePackage, ePackageData);
            } else {
                this.writeCompressedInt(ePackageData.id);
            }
            return ePackageData;
        }

        protected EClassData writeEClass(EClass eClass) throws IOException {
            EClassData eClassData = this.eClassDataMap.get(eClass);
            if (eClassData == null) {
                eClassData = new EClassData();
                EPackageData ePackageData = this.writeEPackage(eClass.getEPackage());
                eClassData.ePackageID = ePackageData.id;
                eClassData.id = ePackageData.allocateEClassID();
                this.writeCompressedInt(eClassData.id);
                this.writeString(eClass.getName());
                int featureCount = eClass.getFeatureCount();
                eClassData.eStructuralFeatureData = new EStructuralFeatureData[featureCount];
                EStructuralFeatureData[] eStructuralFeaturesData = eClassData.eStructuralFeatureData;
                int i = 0;
                while (i < featureCount) {
                    EStructuralFeatureData eStructuralFeatureData = eStructuralFeaturesData[i] = new EStructuralFeatureData();
                    EStructuralFeature.Internal eStructuralFeature = (EStructuralFeature.Internal)eClass.getEStructuralFeature(i);
                    eStructuralFeatureData.name = eStructuralFeature.getName();
                    eStructuralFeatureData.isTransient = eStructuralFeature.isTransient() || eStructuralFeature.isContainer() && !eStructuralFeature.isResolveProxies();
                    eStructuralFeatureData.kind = BinaryIO.FeatureKind.get(eStructuralFeature);
                    if (eStructuralFeature instanceof EAttribute) {
                        EDataType eDataType;
                        EAttribute eAttribute = (EAttribute)((Object)eStructuralFeature);
                        eStructuralFeatureData.eDataType = eDataType = eAttribute.getEAttributeType();
                        eStructuralFeatureData.eFactory = eDataType.getEPackage().getEFactoryInstance();
                        eStructuralFeatureData.isProxyTransient = eStructuralFeatureData.kind == BinaryIO.FeatureKind.FEATURE_MAP;
                    } else {
                        eStructuralFeatureData.isProxyTransient = true;
                    }
                    ++i;
                }
                ePackageData.eClassData[eClassData.id] = eClassData;
                this.eClassDataMap.put(eClass, eClassData);
            } else {
                this.writeCompressedInt(eClassData.ePackageID);
                this.writeCompressedInt(eClassData.id);
            }
            return eClassData;
        }

        protected EStructuralFeatureData writeEStructuralFeature(EStructuralFeature eStructuralFeature) throws IOException {
            EClass eClass = eStructuralFeature.getEContainingClass();
            EClassData eClassData = this.writeEClass(eClass);
            int featureID = eClass.getFeatureID(eStructuralFeature);
            EStructuralFeatureData eStructuralFeatureData = eClassData.eStructuralFeatureData[featureID];
            this.writeCompressedInt(featureID);
            if (eStructuralFeatureData.name != null) {
                this.writeString(eStructuralFeatureData.name);
                eStructuralFeatureData.name = null;
            }
            return eStructuralFeatureData;
        }

        public void saveResource(Resource resource) throws IOException {
            this.resource = resource;
            URI uri = resource.getURI();
            if (uri != null && uri.isHierarchical() && !uri.isRelative()) {
                this.baseURI = uri;
            }
            InternalEList internalEList = (InternalEList)resource.getContents();
            this.saveEObjects(internalEList, Check.CONTAINER);
        }

        public void saveEObjects(InternalEList<? extends InternalEObject> internalEObjects, Check check) throws IOException {
            int size = internalEObjects.size();
            InternalEObject[] values = this.allocateInternalEObjectArray(size);
            internalEObjects.basicToArray(values);
            this.writeCompressedInt(size);
            int i = 0;
            while (i < size) {
                InternalEObject internalEObject = values[i];
                this.saveEObject(internalEObject, check);
                ++i;
            }
            this.recycle(values);
        }

        public void saveFeatureMap(FeatureMap.Internal featureMap) throws IOException {
            int size = featureMap.size();
            Object[] values = this.allocateFeatureMapEntryArray(size);
            featureMap.toArray(values);
            this.writeCompressedInt(size);
            int i = 0;
            while (i < size) {
                Object entry = values[i];
                this.saveFeatureMapEntry((FeatureMap.Entry.Internal)entry);
                ++i;
            }
            this.recycle((FeatureMap.Entry.Internal[])values);
        }

        public void saveFeatureMapEntry(FeatureMap.Entry.Internal entry) throws IOException {
            EStructuralFeatureData eStructuralFeatureData = this.writeEStructuralFeature(entry.getEStructuralFeature());
            Object value = entry.getValue();
            switch (eStructuralFeatureData.kind) {
                case EOBJECT: 
                case EOBJECT_LIST: 
                case EOBJECT_CONTAINMENT: 
                case EOBJECT_CONTAINMENT_LIST: {
                    this.saveEObject((InternalEObject)value, Check.NOTHING);
                    break;
                }
                case EOBJECT_CONTAINMENT_PROXY_RESOLVING: 
                case EOBJECT_CONTAINMENT_LIST_PROXY_RESOLVING: {
                    this.saveEObject((InternalEObject)value, Check.DIRECT_RESOURCE);
                    break;
                }
                case EOBJECT_PROXY_RESOLVING: 
                case EOBJECT_LIST_PROXY_RESOLVING: {
                    this.saveEObject((InternalEObject)value, Check.RESOURCE);
                    break;
                }
                case BOOLEAN: {
                    this.writeBoolean((Boolean)value);
                    break;
                }
                case BYTE: {
                    this.writeByte(((Byte)value).byteValue());
                    break;
                }
                case CHAR: {
                    this.writeChar(((Character)value).charValue());
                    break;
                }
                case DOUBLE: {
                    this.writeDouble((Double)value);
                    break;
                }
                case FLOAT: {
                    this.writeFloat(((Float)value).floatValue());
                    break;
                }
                case INT: {
                    this.writeInt((Integer)value);
                    break;
                }
                case LONG: {
                    this.writeLong((Long)value);
                    break;
                }
                case SHORT: {
                    this.writeShort(((Short)value).shortValue());
                    break;
                }
                case STRING: {
                    this.writeString((String)value);
                    break;
                }
                case DATE: {
                    if ((this.style & 2) != 0) {
                        this.writeDate((Date)value);
                        break;
                    }
                }
                case DATA: 
                case DATA_LIST: {
                    String literal = eStructuralFeatureData.eFactory.convertToString(eStructuralFeatureData.eDataType, value);
                    this.writeString(literal);
                    break;
                }
                default: {
                    throw new IOException("Unhandled case " + (Object)((Object)eStructuralFeatureData.kind));
                }
            }
        }

        public void saveEObject(InternalEObject internalEObject, Check check) throws IOException {
            if (internalEObject == null) {
                this.writeCompressedInt(-1);
            } else {
                Integer id = this.eObjectIDMap.get(internalEObject);
                if (id == null) {
                    int idValue = this.eObjectIDMap.size();
                    this.writeCompressedInt(idValue);
                    this.eObjectIDMap.put(internalEObject, idValue);
                    EClass eClass = internalEObject.eClass();
                    EClassData eClassData = this.writeEClass(eClass);
                    boolean checkIsTransientProxy = false;
                    switch (check) {
                        case DIRECT_RESOURCE: {
                            Resource resource = internalEObject.eDirectResource();
                            if (resource != null) {
                                this.writeCompressedInt(-1);
                                this.writeURI(resource.getURI(), resource.getURIFragment(internalEObject));
                                if ((this.style & 4) == 0) {
                                    return;
                                }
                                checkIsTransientProxy = true;
                                break;
                            }
                            if (!internalEObject.eIsProxy()) break;
                            this.writeCompressedInt(-1);
                            this.writeURI(internalEObject.eProxyURI());
                            if ((this.style & 4) == 0) {
                                return;
                            }
                            checkIsTransientProxy = true;
                            break;
                        }
                        case RESOURCE: {
                            Resource resource = internalEObject.eResource();
                            if (resource != this.resource && resource != null) {
                                this.writeCompressedInt(-1);
                                this.writeURI(resource.getURI(), resource.getURIFragment(internalEObject));
                                if ((this.style & 4) == 0) {
                                    return;
                                }
                                checkIsTransientProxy = true;
                                break;
                            }
                            if (!internalEObject.eIsProxy()) break;
                            this.writeCompressedInt(-1);
                            this.writeURI(internalEObject.eProxyURI());
                            if ((this.style & 4) == 0) {
                                return;
                            }
                            checkIsTransientProxy = true;
                            break;
                        }
                    }
                    EStructuralFeatureData[] eStructuralFeatureData = eClassData.eStructuralFeatureData;
                    int i = 0;
                    int length = eStructuralFeatureData.length;
                    while (i < length) {
                        EStructuralFeatureData structuralFeatureData = eStructuralFeatureData[i];
                        if (!(structuralFeatureData.isTransient || structuralFeatureData.kind == BinaryIO.FeatureKind.EOBJECT_CONTAINER_PROXY_RESOLVING && check != Check.CONTAINER || checkIsTransientProxy && structuralFeatureData.isProxyTransient)) {
                            this.saveFeatureValue(internalEObject, i, structuralFeatureData);
                        }
                        ++i;
                    }
                    this.writeCompressedInt(0);
                } else {
                    this.writeCompressedInt(id);
                }
            }
        }

        protected void saveFeatureValue(InternalEObject internalEObject, int featureID, EStructuralFeatureData eStructuralFeatureData) throws IOException {
            if (internalEObject.eIsSet(featureID)) {
                this.writeCompressedInt(featureID + 1);
                if (eStructuralFeatureData.name != null) {
                    this.writeString(eStructuralFeatureData.name);
                    eStructuralFeatureData.name = null;
                }
                Object value = internalEObject.eGet(featureID, false, true);
                switch (eStructuralFeatureData.kind) {
                    case EOBJECT: 
                    case EOBJECT_CONTAINMENT: {
                        this.saveEObject((InternalEObject)value, Check.NOTHING);
                        break;
                    }
                    case EOBJECT_CONTAINER_PROXY_RESOLVING: {
                        this.saveEObject((InternalEObject)value, Check.DIRECT_RESOURCE);
                        break;
                    }
                    case EOBJECT_CONTAINMENT_PROXY_RESOLVING: {
                        this.saveEObject((InternalEObject)value, Check.DIRECT_RESOURCE);
                        break;
                    }
                    case EOBJECT_PROXY_RESOLVING: {
                        this.saveEObject((InternalEObject)value, Check.RESOURCE);
                        break;
                    }
                    case EOBJECT_LIST: 
                    case EOBJECT_CONTAINMENT_LIST: {
                        InternalEList internalEList = (InternalEList)value;
                        this.saveEObjects(internalEList, Check.NOTHING);
                        break;
                    }
                    case EOBJECT_CONTAINMENT_LIST_PROXY_RESOLVING: {
                        InternalEList internalEList = (InternalEList)value;
                        this.saveEObjects(internalEList, Check.DIRECT_RESOURCE);
                        break;
                    }
                    case EOBJECT_LIST_PROXY_RESOLVING: {
                        InternalEList internalEList = (InternalEList)value;
                        this.saveEObjects(internalEList, Check.RESOURCE);
                        break;
                    }
                    case BOOLEAN: {
                        this.writeBoolean((Boolean)value);
                        break;
                    }
                    case BYTE: {
                        this.writeByte(((Byte)value).byteValue());
                        break;
                    }
                    case CHAR: {
                        this.writeChar(((Character)value).charValue());
                        break;
                    }
                    case DOUBLE: {
                        this.writeDouble((Double)value);
                        break;
                    }
                    case FLOAT: {
                        this.writeFloat(((Float)value).floatValue());
                        break;
                    }
                    case INT: {
                        this.writeInt((Integer)value);
                        break;
                    }
                    case LONG: {
                        this.writeLong((Long)value);
                        break;
                    }
                    case SHORT: {
                        this.writeShort(((Short)value).shortValue());
                        break;
                    }
                    case STRING: {
                        this.writeString((String)value);
                        break;
                    }
                    case FEATURE_MAP: {
                        FeatureMap.Internal featureMap = (FeatureMap.Internal)value;
                        this.saveFeatureMap(featureMap);
                        break;
                    }
                    case DATE: {
                        if ((this.style & 2) != 0) {
                            this.writeDate((Date)value);
                            break;
                        }
                    }
                    case DATA: {
                        String literal = eStructuralFeatureData.eFactory.convertToString(eStructuralFeatureData.eDataType, value);
                        this.writeString(literal);
                        break;
                    }
                    case DATA_LIST: {
                        List dataValues = (List)value;
                        int length = dataValues.size();
                        this.writeCompressedInt(length);
                        int j = 0;
                        while (j < length) {
                            String literal = eStructuralFeatureData.eFactory.convertToString(eStructuralFeatureData.eDataType, dataValues.get(j));
                            this.writeString(literal);
                            ++j;
                        }
                        break;
                    }
                    default: {
                        throw new IOException("Unhandled case " + (Object)((Object)eStructuralFeatureData.kind));
                    }
                }
            }
        }

        public void writeByte(int value) throws IOException {
            this.outputStream.write(value);
        }

        public void writeBoolean(boolean value) throws IOException {
            this.writeByte(value ? 1 : 0);
        }

        public void writeChar(int value) throws IOException {
            this.writeByte((byte)(value >> 8 & 0xFF));
            this.writeByte((byte)(value & 0xFF));
        }

        public void writeShort(int value) throws IOException {
            this.writeByte((byte)(value >> 8 & 0xFF));
            this.writeByte((byte)(value & 0xFF));
        }

        public void writeInt(int value) throws IOException {
            this.writeByte((byte)(value >> 24 & 0xFF));
            this.writeByte((byte)(value >> 16 & 0xFF));
            this.writeByte((byte)(value >> 8 & 0xFF));
            this.writeByte((byte)(value & 0xFF));
        }

        public void writeLong(long value) throws IOException {
            this.writeInt((int)(value >> 32));
            this.writeInt((int)value);
        }

        public void writeFloat(float value) throws IOException {
            if ((this.style & 1) != 0) {
                this.writeInt(Float.floatToIntBits(value));
            } else {
                this.writeString(Float.toString(value));
            }
        }

        public void writeDouble(double value) throws IOException {
            if ((this.style & 1) != 0) {
                this.writeLong(Double.doubleToLongBits(value));
            } else {
                this.writeString(Double.toString(value));
            }
        }

        public void writeCompressedInt(int value) throws IOException {
            int firstByte = ++value >> 24 & 0xFF;
            int secondByte = value >> 16 & 0xFF;
            int thirdByte = value >> 8 & 0xFF;
            int fourthBtye = value & 0xFF;
            if (firstByte > 63) {
                this.handleInvalidValue(value);
            } else if (firstByte != 0 || secondByte > 63) {
                this.writeByte(firstByte | 0xC0);
                this.writeByte(secondByte);
                this.writeByte(thirdByte);
                this.writeByte(fourthBtye);
            } else if (secondByte != 0 || thirdByte > 63) {
                this.writeByte(secondByte | 0x80);
                this.writeByte(thirdByte);
                this.writeByte(fourthBtye);
            } else if (thirdByte != 0 || fourthBtye > 63) {
                this.writeByte(thirdByte | 0x40);
                this.writeByte(fourthBtye);
            } else {
                this.writeByte(fourthBtye);
            }
        }

        private final void handleInvalidValue(int value) throws IOException {
            throw new IOException("Invalid value " + value);
        }

        public void writeString(String value) throws IOException {
            if (value == null) {
                this.writeCompressedInt(-1);
            } else {
                int length = value.length();
                this.writeCompressedInt(length);
                if (this.characters == null || this.characters.length < length) {
                    this.characters = new char[length];
                }
                value.getChars(0, length, this.characters, 0);
                int i = 0;
                while (i < length) {
                    char character = this.characters[i];
                    if (character == '\u0000' || character > '\u00ff') {
                        this.writeByte(0);
                        this.writeChar(character);
                        while (++i < length) {
                            this.writeChar(this.characters[i]);
                        }
                        break;
                    }
                    this.writeByte((byte)character);
                    ++i;
                }
            }
        }

        public void writeDate(Date date) throws IOException {
            this.writeLong(date.getTime());
        }

        public void writeURI(URI uri) throws IOException {
            this.writeURI(uri.trimFragment(), uri.fragment());
        }

        public void writeURI(URI uri, String fragment) throws IOException {
            if (uri == null) {
                this.writeCompressedInt(-1);
            } else {
                assert (uri.fragment() == null);
                Integer id = this.uriToIDMap.get(uri);
                if (id == null) {
                    int idValue = this.uriToIDMap.size();
                    this.uriToIDMap.put(uri, idValue);
                    this.writeCompressedInt(idValue);
                    this.writeString(this.deresolve(uri).toString());
                } else {
                    this.writeCompressedInt(id);
                }
                this.writeString(fragment);
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static enum Check {
            NOTHING,
            DIRECT_RESOURCE,
            RESOURCE,
            CONTAINER;

        }

        protected static class EClassData {
            public int ePackageID;
            public int id;
            public EStructuralFeatureData[] eStructuralFeatureData;

            protected EClassData() {
            }
        }

        protected static class EPackageData {
            public int id;
            public EClassData[] eClassData;

            protected EPackageData() {
            }

            public final int allocateEClassID() {
                int i = 0;
                int length = this.eClassData.length;
                while (i < length) {
                    EClassData eClassData = this.eClassData[i];
                    if (eClassData == null) {
                        return i;
                    }
                    ++i;
                }
                return -1;
            }
        }

        protected static class EStructuralFeatureData {
            public String name;
            public boolean isTransient;
            public boolean isProxyTransient;
            public BinaryIO.FeatureKind kind;
            public EFactory eFactory;
            public EDataType eDataType;

            protected EStructuralFeatureData() {
            }
        }
    }
}

