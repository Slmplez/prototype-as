/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.impl.AdapterImpl
 *  org.eclipse.emf.common.notify.impl.NotificationChainImpl
 *  org.eclipse.emf.common.notify.impl.NotificationImpl
 *  org.eclipse.emf.common.notify.impl.NotifierImpl
 *  org.eclipse.emf.common.notify.impl.NotifyingListImpl
 *  org.eclipse.emf.common.util.AbstractTreeIterator
 *  org.eclipse.emf.common.util.BasicEList$FastCompare
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.WrappedException
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.common.notify.impl.NotificationChainImpl;
import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.common.notify.impl.NotifierImpl;
import org.eclipse.emf.common.notify.impl.NotifyingListImpl;
import org.eclipse.emf.common.util.AbstractTreeIterator;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.impl.ExtensibleURIConverterImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.util.NotifyingInternalEListImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceImpl
extends NotifierImpl
implements Resource,
Resource.Internal {
    private static URIConverter defaultURIConverter;
    protected Map<Object, Object> defaultSaveOptions;
    protected Map<Object, Object> defaultLoadOptions;
    protected Map<Object, Object> defaultDeleteOptions;
    protected ResourceSet resourceSet;
    protected URI uri;
    protected long timeStamp;
    protected ContentsEList<EObject> contents;
    protected EList<Resource.Diagnostic> errors;
    protected EList<Resource.Diagnostic> warnings;
    protected boolean isModified;
    protected boolean isLoaded;
    protected boolean isLoading;
    protected List<EObject> unloadingContents;
    protected Adapter modificationTrackingAdapter;
    protected Map<String, EObject> intrinsicIDToEObjectMap;

    protected static URIConverter getDefaultURIConverter() {
        if (defaultURIConverter == null) {
            defaultURIConverter = new ExtensibleURIConverterImpl();
        }
        return defaultURIConverter;
    }

    protected static Map<?, ?> mergeMaps(Map<?, ?> map1, Map<?, ?> map2) {
        if (map1 == null || map1.isEmpty()) {
            return map2;
        }
        if (map2 == null || map2.isEmpty()) {
            return map1;
        }
        return new ExtensibleURIConverterImpl.OptionsMap(map1, map2);
    }

    public ResourceImpl() {
    }

    public ResourceImpl(URI uri) {
        this();
        this.uri = uri;
    }

    @Override
    public ResourceSet getResourceSet() {
        return this.resourceSet;
    }

    @Override
    public NotificationChain basicSetResourceSet(ResourceSet resourceSet, NotificationChain notifications) {
        ResourceSet oldResourceSet = this.resourceSet;
        if (oldResourceSet != null) {
            notifications = ((InternalEList)oldResourceSet.getResources()).basicRemove(this, notifications);
        }
        this.resourceSet = resourceSet;
        if (this.eNotificationRequired()) {
            if (notifications == null) {
                notifications = new NotificationChainImpl(2);
            }
            notifications.add((Notification)new NotificationImpl(1, oldResourceSet, resourceSet){

                public Object getNotifier() {
                    return ResourceImpl.this;
                }

                public int getFeatureID(Class<?> expectedClass) {
                    return 0;
                }
            });
        }
        return notifications;
    }

    @Override
    public URI getURI() {
        return this.uri;
    }

    @Override
    public void setURI(URI uri) {
        URI oldURI = this.uri;
        this.uri = uri;
        if (this.eNotificationRequired()) {
            NotificationImpl notification = new NotificationImpl(1, oldURI, uri){

                public Object getNotifier() {
                    return ResourceImpl.this;
                }

                public int getFeatureID(Class<?> expectedClass) {
                    return 1;
                }
            };
            this.eNotify((Notification)notification);
        }
    }

    @Override
    public long getTimeStamp() {
        return this.timeStamp;
    }

    @Override
    public void setTimeStamp(long timeStamp) {
        long oldTimeStamp = this.timeStamp;
        this.timeStamp = timeStamp;
        if (this.eNotificationRequired()) {
            NotificationImpl notification = new NotificationImpl(1, oldTimeStamp, timeStamp){

                public Object getNotifier() {
                    return ResourceImpl.this;
                }

                public int getFeatureID(Class<?> expectedClass) {
                    return 8;
                }
            };
            this.eNotify((Notification)notification);
        }
    }

    @Override
    public EList<EObject> getContents() {
        if (this.contents == null) {
            this.contents = new ContentsEList();
        }
        return this.contents;
    }

    @Override
    public TreeIterator<EObject> getAllContents() {
        return new AbstractTreeIterator<EObject>((Object)this, false){
            private static final long serialVersionUID = 1L;

            public Iterator<EObject> getChildren(Object object) {
                return object == ResourceImpl.this ? ResourceImpl.this.getContents().iterator() : ((EObject)object).eContents().iterator();
            }
        };
    }

    protected TreeIterator<EObject> getAllProperContents(EObject eObject) {
        return EcoreUtil.getAllProperContents(eObject, false);
    }

    protected TreeIterator<EObject> getAllProperContents(List<EObject> contents) {
        return new EcoreUtil.ContentTreeIterator<EObject>(contents, false){
            private static final long serialVersionUID = 1L;

            @Override
            public Iterator<EObject> getChildren(Object object) {
                return object == this.object ? ((List)object).iterator() : new EcoreUtil.ProperContentIterator((EObject)object);
            }
        };
    }

    @Override
    public EList<Resource.Diagnostic> getErrors() {
        if (this.errors == null) {
            this.errors = new NotifyingListImpl<Resource.Diagnostic>(){
                private static final long serialVersionUID = 1L;

                protected boolean isNotificationRequired() {
                    return ResourceImpl.this.eNotificationRequired();
                }

                public Object getNotifier() {
                    return ResourceImpl.this;
                }

                public int getFeatureID() {
                    return 6;
                }
            };
        }
        return this.errors;
    }

    @Override
    public EList<Resource.Diagnostic> getWarnings() {
        if (this.warnings == null) {
            this.warnings = new NotifyingListImpl<Resource.Diagnostic>(){
                private static final long serialVersionUID = 1L;

                protected boolean isNotificationRequired() {
                    return ResourceImpl.this.eNotificationRequired();
                }

                public Object getNotifier() {
                    return ResourceImpl.this;
                }

                public int getFeatureID() {
                    return 7;
                }
            };
        }
        return this.warnings;
    }

    protected boolean useZip() {
        return false;
    }

    protected String getURIFragmentRootSegment(EObject eObject) {
        List<EObject> contents = this.unloadingContents != null ? this.unloadingContents : this.getContents();
        return contents.size() > 1 ? Integer.toString(contents.indexOf(eObject)) : "";
    }

    @Override
    public String getURIFragment(EObject eObject) {
        String id = EcoreUtil.getID(eObject);
        if (id != null) {
            return id;
        }
        InternalEObject internalEObject = (InternalEObject)eObject;
        if (internalEObject.eDirectResource() == this || this.unloadingContents != null && this.unloadingContents.contains(internalEObject)) {
            return "/" + this.getURIFragmentRootSegment(eObject);
        }
        ArrayList<String> uriFragmentPath = new ArrayList<String>();
        boolean isContained = false;
        InternalEObject container = internalEObject.eInternalContainer();
        while (container != null) {
            uriFragmentPath.add(container.eURIFragmentSegment(internalEObject.eContainingFeature(), internalEObject));
            internalEObject = container;
            if (container.eDirectResource() == this || this.unloadingContents != null && this.unloadingContents.contains(container)) {
                isContained = true;
                break;
            }
            container = internalEObject.eInternalContainer();
        }
        if (!isContained) {
            return "/-1";
        }
        StringBuffer result = new StringBuffer("/");
        result.append(this.getURIFragmentRootSegment(internalEObject));
        int i = uriFragmentPath.size() - 1;
        while (i >= 0) {
            result.append('/');
            result.append((String)uriFragmentPath.get(i));
            --i;
        }
        return result.toString();
    }

    protected EObject getEObjectForURIFragmentRootSegment(String uriFragmentRootSegment) {
        EList<EObject> contents;
        int position = 0;
        if (uriFragmentRootSegment.length() > 0) {
            try {
                position = Integer.parseInt(uriFragmentRootSegment);
            }
            catch (NumberFormatException exception) {
                throw new WrappedException((Exception)exception);
            }
        }
        if (position < (contents = this.getContents()).size() && position >= 0) {
            return (EObject)contents.get(position);
        }
        return null;
    }

    @Override
    public EObject getEObject(String uriFragment) {
        int length = uriFragment.length();
        if (length > 0) {
            int index;
            if (uriFragment.charAt(0) == '/') {
                ArrayList<String> uriFragmentPath = new ArrayList<String>(4);
                int start = 1;
                int i = 1;
                while (i < length) {
                    if (uriFragment.charAt(i) == '/') {
                        uriFragmentPath.add(start == i ? "" : uriFragment.substring(start, i));
                        start = i + 1;
                    }
                    ++i;
                }
                uriFragmentPath.add(uriFragment.substring(start));
                return this.getEObject(uriFragmentPath);
            }
            if (uriFragment.charAt(length - 1) == '?' && (index = uriFragment.lastIndexOf(63, length - 2)) > 0) {
                uriFragment = uriFragment.substring(0, index);
            }
        }
        return this.getEObjectByID(uriFragment);
    }

    protected EObject getEObject(List<String> uriFragmentPath) {
        int size = uriFragmentPath.size();
        EObject eObject = this.getEObjectForURIFragmentRootSegment(size == 0 ? "" : uriFragmentPath.get(0));
        int i = 1;
        while (i < size && eObject != null) {
            eObject = ((InternalEObject)eObject).eObjectForURIFragmentSegment(uriFragmentPath.get(i));
            ++i;
        }
        return eObject;
    }

    public Map<String, EObject> getIntrinsicIDToEObjectMap() {
        return this.intrinsicIDToEObjectMap;
    }

    public void setIntrinsicIDToEObjectMap(Map<String, EObject> intrinsicIDToEObjectMap) {
        this.intrinsicIDToEObjectMap = intrinsicIDToEObjectMap;
    }

    protected EObject getEObjectByID(String id) {
        EObject eObject;
        Map<String, EObject> map = this.getIntrinsicIDToEObjectMap();
        if (map != null && (eObject = map.get(id)) != null) {
            return eObject;
        }
        EObject result = null;
        TreeIterator<EObject> i = this.getAllProperContents((List<EObject>)this.getContents());
        while (i.hasNext()) {
            EObject eObject2 = (EObject)i.next();
            String eObjectId = EcoreUtil.getID(eObject2);
            if (eObjectId == null) continue;
            if (map != null) {
                map.put(eObjectId, eObject2);
            }
            if (!eObjectId.equals(id)) continue;
            result = eObject2;
            if (map == null) break;
        }
        return result;
    }

    @Override
    public void attached(EObject eObject) {
        if (this.isAttachedDetachedHelperRequired()) {
            this.attachedHelper(eObject);
            TreeIterator<EObject> tree = this.getAllProperContents(eObject);
            while (tree.hasNext()) {
                this.attachedHelper((EObject)tree.next());
            }
        }
    }

    protected boolean isAttachedDetachedHelperRequired() {
        return this.isTrackingModification() || this.getIntrinsicIDToEObjectMap() != null;
    }

    protected void attachedHelper(EObject eObject) {
        String id;
        Map<String, EObject> map;
        if (this.isTrackingModification()) {
            eObject.eAdapters().add((Object)this.modificationTrackingAdapter);
        }
        if ((map = this.getIntrinsicIDToEObjectMap()) != null && (id = EcoreUtil.getID(eObject)) != null) {
            map.put(id, eObject);
        }
    }

    @Deprecated
    protected final void addModificationTrackingAdapters(EObject eObject) {
    }

    @Override
    public void detached(EObject eObject) {
        if (this.isAttachedDetachedHelperRequired()) {
            this.detachedHelper(eObject);
            TreeIterator<EObject> tree = this.getAllProperContents(eObject);
            while (tree.hasNext()) {
                this.detachedHelper((EObject)tree.next());
            }
        }
    }

    protected void detachedHelper(EObject eObject) {
        String id;
        Map<String, EObject> map = this.getIntrinsicIDToEObjectMap();
        if (map != null && (id = EcoreUtil.getID(eObject)) != null) {
            map.remove(id);
        }
        if (this.isTrackingModification()) {
            eObject.eAdapters().remove((Object)this.modificationTrackingAdapter);
        }
    }

    @Deprecated
    protected final void removeModificationTrackingAdapters(EObject eObject) {
    }

    protected URIConverter getURIConverter() {
        return this.getResourceSet() == null ? ResourceImpl.getDefaultURIConverter() : this.getResourceSet().getURIConverter();
    }

    @Override
    public void save(Map<?, ?> options) throws IOException {
        Object saveOnlyIfChanged;
        Object object = options != null && options.containsKey("SAVE_ONLY_IF_CHANGED") ? (Object)options.get("SAVE_ONLY_IF_CHANGED") : (saveOnlyIfChanged = this.defaultSaveOptions != null ? this.defaultSaveOptions.get("SAVE_ONLY_IF_CHANGED") : null);
        if ("FILE_BUFFER".equals(saveOnlyIfChanged)) {
            this.saveOnlyIfChangedWithFileBuffer(options);
        } else if ("MEMORY_BUFFER".equals(saveOnlyIfChanged)) {
            this.saveOnlyIfChangedWithMemoryBuffer(options);
        } else {
            HashMap response;
            HashMap hashMap = response = options == null ? null : (HashMap)options.get("RESPONSE");
            if (response == null) {
                response = new HashMap();
            }
            URIConverter uriConverter = this.getURIConverter();
            ExtensibleURIConverterImpl.OptionsMap effectiveOptions = new ExtensibleURIConverterImpl.OptionsMap("RESPONSE", response, options, this.defaultSaveOptions);
            OutputStream outputStream = uriConverter.createOutputStream(this.getURI(), effectiveOptions);
            try {
                this.save(outputStream, options);
            }
            finally {
                outputStream.close();
                this.handleSaveResponse(response, effectiveOptions);
            }
        }
    }

    protected void handleSaveResponse(Map<?, ?> response, Map<?, ?> options) {
        URI uri;
        Long timeStamp = (Long)response.get("TIME_STAMP");
        if (timeStamp != null) {
            this.setTimeStamp(timeStamp);
        }
        if ((uri = (URI)response.get("URI")) != null) {
            this.setURI(uri);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void saveOnlyIfChangedWithFileBuffer(Map<?, ?> options) throws IOException {
        File temporaryFile = File.createTempFile("ResourceSaveHelper", null);
        try {
            HashMap response;
            byte[] newContentBuffer;
            boolean equal;
            URIConverter uriConverter;
            URI temporaryFileURI;
            block27: {
                temporaryFileURI = URI.createFileURI((String)temporaryFile.getPath());
                uriConverter = this.getURIConverter();
                OutputStream temporaryFileOutputStream = uriConverter.createOutputStream(temporaryFileURI, null);
                try {
                    this.save(temporaryFileOutputStream, options);
                }
                finally {
                    temporaryFileOutputStream.close();
                }
                equal = true;
                InputStream oldContents = null;
                try {
                    oldContents = this.getUnderlyingInputStream(uriConverter.createInputStream(this.getURI(), this.defaultLoadOptions), options);
                }
                catch (IOException exception) {
                    equal = false;
                }
                newContentBuffer = new byte[4000];
                if (oldContents != null) {
                    try {
                        InputStream newContents = this.getUnderlyingInputStream(uriConverter.createInputStream(temporaryFileURI, null), options);
                        try {
                            byte[] oldContentBuffer = new byte[4000];
                            int oldLength = oldContents.read(oldContentBuffer);
                            int newLength = newContents.read(newContentBuffer);
                            while ((equal = oldLength == newLength) && oldLength > 0) {
                                int i = 0;
                                while (i < oldLength) {
                                    if (oldContentBuffer[i] != newContentBuffer[i]) {
                                        equal = false;
                                        break block27;
                                    }
                                    ++i;
                                }
                                oldLength = oldContents.read(oldContentBuffer);
                                newLength = newContents.read(newContentBuffer);
                            }
                        }
                        finally {
                            newContents.close();
                        }
                    }
                    finally {
                        oldContents.close();
                    }
                }
            }
            if (equal) return;
            HashMap hashMap = response = options == null ? null : (HashMap)options.get("RESPONSE");
            if (response == null) {
                response = new HashMap();
            }
            ExtensibleURIConverterImpl.OptionsMap effectiveOptions = new ExtensibleURIConverterImpl.OptionsMap("RESPONSE", response, options, this.defaultSaveOptions);
            OutputStream newContents = uriConverter.createOutputStream(this.getURI(), effectiveOptions);
            try {
                InputStream temporaryFileContents = uriConverter.createInputStream(temporaryFileURI, null);
                try {
                    int length = temporaryFileContents.read(newContentBuffer);
                    while (length > 0) {
                        newContents.write(newContentBuffer, 0, length);
                        length = temporaryFileContents.read(newContentBuffer);
                    }
                    return;
                }
                finally {
                    temporaryFileContents.close();
                }
            }
            finally {
                newContents.close();
                this.handleSaveResponse(response, effectiveOptions);
            }
        }
        finally {
            temporaryFile.delete();
        }
    }

    protected void saveOnlyIfChangedWithMemoryBuffer(Map<?, ?> options) throws IOException {
        boolean equal;
        int length;
        byte[] newContentBuffer;
        URIConverter uriConverter;
        block22: {
            int underlyingLength;
            byte[] underlyingNewContentBuffer;
            uriConverter = this.getURIConverter();
            class MyByteArrayOutputStream
            extends ByteArrayOutputStream {
                MyByteArrayOutputStream() {
                }

                public byte[] buffer() {
                    return this.buf;
                }

                public int length() {
                    return this.count;
                }
            }
            MyByteArrayOutputStream memoryBuffer = new MyByteArrayOutputStream();
            try {
                this.save(memoryBuffer, options);
            }
            finally {
                memoryBuffer.close();
            }
            newContentBuffer = memoryBuffer.buffer();
            length = memoryBuffer.length();
            ByteArrayInputStream inputStream = new ByteArrayInputStream(newContentBuffer);
            InputStream underlyingInputStream = this.getUnderlyingInputStream(inputStream, options);
            if (inputStream == underlyingInputStream) {
                underlyingNewContentBuffer = newContentBuffer;
                underlyingLength = length;
            } else {
                ByteArrayOutputStream bytes = new ByteArrayOutputStream();
                byte[] buffer = new byte[4000];
                int count = underlyingInputStream.read(buffer);
                while (count > 0) {
                    bytes.write(buffer, 0, count);
                    count = underlyingInputStream.read(buffer);
                }
                bytes.close();
                underlyingInputStream.close();
                underlyingNewContentBuffer = bytes.toByteArray();
                underlyingLength = underlyingNewContentBuffer.length;
            }
            equal = true;
            InputStream oldContents = null;
            try {
                oldContents = this.getUnderlyingInputStream(uriConverter.createInputStream(this.getURI(), this.defaultLoadOptions), options);
            }
            catch (IOException exception) {
                equal = false;
            }
            if (oldContents != null) {
                try {
                    byte[] oldContentBuffer = new byte[underlyingLength];
                    int count = oldContents.read(oldContentBuffer);
                    while (count > 0 && count < underlyingLength) {
                        int more = oldContents.read(oldContentBuffer, count, oldContentBuffer.length - count);
                        if (more <= 0) break;
                        count += more;
                    }
                    if (count == underlyingLength && oldContents.read() == -1) {
                        int i = 0;
                        while (i < underlyingLength) {
                            if (oldContentBuffer[i] != underlyingNewContentBuffer[i]) {
                                equal = false;
                                break block22;
                            }
                            ++i;
                        }
                        break block22;
                    }
                    equal = false;
                }
                finally {
                    oldContents.close();
                }
            }
        }
        if (!equal) {
            HashMap response;
            HashMap hashMap = response = options == null ? null : (HashMap)options.get("RESPONSE");
            if (response == null) {
                response = new HashMap();
            }
            ExtensibleURIConverterImpl.OptionsMap effectiveOptions = new ExtensibleURIConverterImpl.OptionsMap("RESPONSE", response, options, this.defaultSaveOptions);
            OutputStream newContents = uriConverter.createOutputStream(this.getURI(), effectiveOptions);
            try {
                newContents.write(newContentBuffer, 0, length);
            }
            finally {
                newContents.close();
                this.handleSaveResponse(response, effectiveOptions);
            }
        }
    }

    @Override
    public void load(Map<?, ?> options) throws IOException {
        if (!this.isLoaded) {
            HashMap response;
            URIConverter uriConverter = this.getURIConverter();
            HashMap hashMap = response = options == null ? null : (HashMap)options.get("RESPONSE");
            if (response == null) {
                response = new HashMap();
            }
            InputStream inputStream = null;
            ExtensibleURIConverterImpl.OptionsMap effectiveOptions = new ExtensibleURIConverterImpl.OptionsMap("RESPONSE", response, options, this.defaultLoadOptions);
            try {
                inputStream = uriConverter.createInputStream(this.getURI(), effectiveOptions);
            }
            catch (IOException exception) {
                Notification notification = this.setLoaded(true);
                this.isLoading = true;
                if (this.errors != null) {
                    this.errors.clear();
                }
                if (this.warnings != null) {
                    this.warnings.clear();
                }
                this.isLoading = false;
                if (notification != null) {
                    this.eNotify(notification);
                }
                this.setModified(false);
                throw exception;
            }
            try {
                this.load(inputStream, options);
            }
            finally {
                inputStream.close();
                this.handleLoadResponse(response, effectiveOptions);
            }
        }
    }

    protected void handleLoadResponse(Map<?, ?> response, Map<?, ?> options) {
        Long timeStamp = (Long)response.get("TIME_STAMP");
        if (timeStamp != null) {
            this.setTimeStamp(timeStamp);
        }
    }

    protected ZipEntry newContentZipEntry() {
        return new ZipEntry("ResourceContents");
    }

    private InputStream getUnderlyingInputStream(InputStream inputStream, Map<?, ?> options) throws IOException {
        if (this.useZip() || options != null && Boolean.TRUE.equals(options.get("ZIP"))) {
            ZipInputStream zipInputStream = new ZipInputStream(inputStream);
            while (zipInputStream.available() != 0) {
                ZipEntry zipEntry = zipInputStream.getNextEntry();
                if (!this.isContentZipEntry(zipEntry)) continue;
                return zipInputStream;
            }
        }
        return inputStream;
    }

    @Override
    public final void save(OutputStream outputStream, Map<?, ?> options) throws IOException {
        URIConverter.Cipher cipher;
        if (this.errors != null) {
            this.errors.clear();
        }
        if (this.warnings != null) {
            this.warnings.clear();
        }
        options = ResourceImpl.mergeMaps(options, this.defaultSaveOptions);
        ZipOutputStream zipOutputStream = null;
        if (this.useZip() || options != null && Boolean.TRUE.equals(options.get("ZIP"))) {
            zipOutputStream = new ZipOutputStream(outputStream){

                public void finish() throws IOException {
                    super.finish();
                    this.def.end();
                }

                public void flush() {
                }

                public void close() throws IOException {
                    try {
                        super.flush();
                    }
                    catch (IOException iOException) {
                        // empty catch block
                    }
                    super.close();
                }
            };
            zipOutputStream.putNextEntry(this.newContentZipEntry());
            outputStream = zipOutputStream;
        }
        URIConverter.Cipher cipher2 = cipher = options != null ? (URIConverter.Cipher)options.get("CIPHER") : null;
        if (cipher != null) {
            try {
                outputStream = cipher.encrypt(outputStream);
            }
            catch (Exception e) {
                throw new Resource.IOWrappedException(e);
            }
        }
        this.doSave(outputStream, options);
        if (cipher != null) {
            try {
                cipher.finish(outputStream);
            }
            catch (Exception e) {
                throw new Resource.IOWrappedException(e);
            }
        }
        this.setModified(false);
        if (zipOutputStream != null) {
            zipOutputStream.finish();
        }
    }

    protected void doSave(OutputStream outputStream, Map<?, ?> options) throws IOException {
        throw new UnsupportedOperationException();
    }

    protected boolean isContentZipEntry(ZipEntry zipEntry) {
        return true;
    }

    @Override
    public final void load(InputStream inputStream, Map<?, ?> options) throws IOException {
        block12: {
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
                    URIConverter.Cipher cipher;
                    options = ResourceImpl.mergeMaps(options, this.defaultLoadOptions);
                    inputStream = this.getUnderlyingInputStream(inputStream, options);
                    URIConverter.Cipher cipher2 = cipher = options != null ? (URIConverter.Cipher)options.get("CIPHER") : null;
                    if (cipher != null) {
                        try {
                            inputStream = cipher.decrypt(inputStream);
                        }
                        catch (Exception e) {
                            throw new Resource.IOWrappedException(e);
                        }
                    }
                    this.doLoad(inputStream, options);
                    if (cipher == null) break block12;
                    try {
                        cipher.finish(inputStream);
                    }
                    catch (Exception e) {
                        throw new Resource.IOWrappedException(e);
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
    }

    protected void doLoad(InputStream inputStream, Map<?, ?> options) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isLoaded() {
        return this.isLoaded;
    }

    @Override
    public boolean isLoading() {
        return this.isLoading;
    }

    protected void unloaded(InternalEObject internalEObject) {
        if (!internalEObject.eIsProxy()) {
            internalEObject.eSetProxyURI(this.uri.appendFragment(this.getURIFragment(internalEObject)));
        }
        internalEObject.eAdapters().clear();
    }

    protected Notification setLoaded(boolean isLoaded) {
        boolean oldIsLoaded = this.isLoaded;
        this.isLoaded = isLoaded;
        if (this.eNotificationRequired()) {
            NotificationImpl notification = new NotificationImpl(1, oldIsLoaded, isLoaded){

                public Object getNotifier() {
                    return ResourceImpl.this;
                }

                public int getFeatureID(Class<?> expectedClass) {
                    return 4;
                }
            };
            return notification;
        }
        return null;
    }

    protected void doUnload() {
        TreeIterator<EObject> allContents = this.getAllProperContents(this.unloadingContents);
        if (!this.getContents().isEmpty()) {
            this.getContents().clear();
        }
        this.getErrors().clear();
        this.getWarnings().clear();
        while (allContents.hasNext()) {
            this.unloaded((InternalEObject)allContents.next());
        }
    }

    @Override
    public final void unload() {
        if (this.isLoaded) {
            this.unloadingContents = new BasicEList.FastCompare(this.getContents());
            Notification notification = this.setLoaded(false);
            try {
                this.doUnload();
            }
            finally {
                this.unloadingContents = null;
                if (notification != null) {
                    this.eNotify(notification);
                }
                this.setTimeStamp(-1L);
            }
        }
    }

    @Override
    public void delete(Map<?, ?> options) throws IOException {
        this.getURIConverter().delete(this.getURI(), ResourceImpl.mergeMaps(options, this.defaultDeleteOptions));
        this.unload();
        ResourceSet resourceSet = this.getResourceSet();
        if (resourceSet != null) {
            resourceSet.getResources().remove((Object)this);
        }
    }

    @Override
    public boolean isTrackingModification() {
        return this.modificationTrackingAdapter != null;
    }

    @Override
    public void setTrackingModification(boolean isTrackingModification) {
        boolean oldIsTrackingModification;
        boolean bl = oldIsTrackingModification = this.modificationTrackingAdapter != null;
        if (oldIsTrackingModification != isTrackingModification) {
            if (isTrackingModification) {
                this.modificationTrackingAdapter = this.createModificationTrackingAdapter();
                TreeIterator<EObject> i = this.getAllProperContents((List<EObject>)this.getContents());
                while (i.hasNext()) {
                    EObject eObject = (EObject)i.next();
                    eObject.eAdapters().add((Object)this.modificationTrackingAdapter);
                }
            } else {
                Adapter oldModificationTrackingAdapter = this.modificationTrackingAdapter;
                this.modificationTrackingAdapter = null;
                TreeIterator<EObject> i = this.getAllProperContents((List<EObject>)this.getContents());
                while (i.hasNext()) {
                    EObject eObject = (EObject)i.next();
                    eObject.eAdapters().remove((Object)oldModificationTrackingAdapter);
                }
            }
        }
        if (this.eNotificationRequired()) {
            NotificationImpl notification = new NotificationImpl(1, oldIsTrackingModification, isTrackingModification){

                public Object getNotifier() {
                    return ResourceImpl.this;
                }

                public int getFeatureID(Class<?> expectedClass) {
                    return 5;
                }
            };
            this.eNotify((Notification)notification);
        }
    }

    protected Adapter createModificationTrackingAdapter() {
        return new ModificationTrackingAdapter();
    }

    @Override
    public boolean isModified() {
        return this.isModified;
    }

    @Override
    public void setModified(boolean isModified) {
        boolean oldIsModified = this.isModified;
        this.isModified = isModified;
        if (this.eNotificationRequired()) {
            NotificationImpl notification = new NotificationImpl(1, oldIsModified, isModified){

                public Object getNotifier() {
                    return ResourceImpl.this;
                }

                public int getFeatureID(Class<?> expectedClass) {
                    return 3;
                }
            };
            this.eNotify((Notification)notification);
        }
    }

    public String toKeyString() {
        StringBuffer result = new StringBuffer("Key type: ");
        result.append(this.getClass().toString());
        return result.toString();
    }

    public String toString() {
        return String.valueOf(this.getClass().getName()) + '@' + Integer.toHexString(this.hashCode()) + " uri='" + this.uri + "'";
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ContentsEList<E>
    extends NotifyingInternalEListImpl<E>
    implements InternalEList<E> {
        private static final long serialVersionUID = 1L;

        protected ContentsEList() {
        }

        public Object getNotifier() {
            return ResourceImpl.this;
        }

        public int getFeatureID() {
            return 2;
        }

        protected boolean isNotificationRequired() {
            return ResourceImpl.this.eNotificationRequired();
        }

        protected boolean useEquals() {
            return false;
        }

        protected boolean hasInverse() {
            return true;
        }

        protected boolean isUnique() {
            return true;
        }

        public NotificationChain inverseAdd(E object, NotificationChain notifications) {
            InternalEObject eObject = (InternalEObject)object;
            notifications = eObject.eSetResource(ResourceImpl.this, notifications);
            ResourceImpl.this.attached(eObject);
            return notifications;
        }

        public NotificationChain inverseRemove(E object, NotificationChain notifications) {
            InternalEObject eObject = (InternalEObject)object;
            if (ResourceImpl.this.isLoaded) {
                ResourceImpl.this.detached(eObject);
            }
            return eObject.eSetResource(null, notifications);
        }

        protected Object[] newData(int capacity) {
            return new EObject[capacity];
        }

        protected void didAdd(int index, E object) {
            super.didAdd(index, object);
            if (index == this.size - 1) {
                this.loaded();
            }
            this.modified();
        }

        protected void didRemove(int index, E object) {
            super.didRemove(index, object);
            this.modified();
        }

        protected void didSet(int index, E newObject, E oldObject) {
            super.didSet(index, newObject, oldObject);
            this.modified();
        }

        protected void didClear(int oldSize, Object[] oldData) {
            if (oldSize == 0) {
                this.loaded();
            } else {
                super.didClear(oldSize, oldData);
            }
        }

        protected void loaded() {
            Notification notification;
            if (!ResourceImpl.this.isLoaded() && (notification = ResourceImpl.this.setLoaded(true)) != null) {
                ResourceImpl.this.eNotify(notification);
            }
        }

        protected void modified() {
            if (ResourceImpl.this.isTrackingModification()) {
                ResourceImpl.this.setModified(true);
            }
        }

        public boolean contains(Object object) {
            return this.size <= 4 ? super.contains(object) : object instanceof InternalEObject && ((InternalEObject)object).eDirectResource() == ResourceImpl.this;
        }
    }

    protected class ModificationTrackingAdapter
    extends AdapterImpl {
        protected ModificationTrackingAdapter() {
        }

        public void notifyChanged(Notification notification) {
            if (!notification.isTouch()) {
                ResourceImpl.this.setModified(true);
            }
        }
    }
}

