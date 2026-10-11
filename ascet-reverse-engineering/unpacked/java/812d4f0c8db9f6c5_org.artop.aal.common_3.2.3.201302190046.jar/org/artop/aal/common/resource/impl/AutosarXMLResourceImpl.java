/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  org.artop.eel.common.resource.ExtendedEObjectInputStream
 *  org.artop.eel.common.resource.ExtendedEObjectOutputStream
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.emf.common.CommonPlugin
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectOutputStream$Check
 *  org.eclipse.emf.ecore.xmi.XMLLoad
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.XMLResource$ResourceHandler
 *  org.eclipse.emf.ecore.xmi.XMLSave
 *  org.eclipse.emf.ecore.xmi.impl.XMLResourceImpl
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.util.TransactionUtil
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.artop.aal.common.resource.impl;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.artop.aal.common.Activator;
import org.artop.aal.common.internal.UUID;
import org.artop.aal.common.internal.messages.Messages;
import org.artop.aal.common.preferences.IAutosarPreferenceConstants;
import org.artop.aal.common.preferences.IAutosarPreferences;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.common.resource.impl.ExtendedAutosarResourceAdapter;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.eel.common.resource.ExtendedEObjectInputStream;
import org.artop.eel.common.resource.ExtendedEObjectOutputStream;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.XMLSave;
import org.eclipse.emf.ecore.xmi.impl.XMLResourceImpl;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarXMLResourceImpl
extends XMLResourceImpl {
    public static final String OPTION_APPLY_RESOURCE_HANDLER = "APPLY_RESOURCE_HANDLER";
    protected ExtendedAutosarResourceAdapter extendedResource;
    private Map<UUID, UUID> uuids = new HashMap<UUID, UUID>();

    public AutosarXMLResourceImpl(URI uri) {
        super(uri);
        this.extendedResource = new ExtendedAutosarResourceAdapter();
        this.eAdapters().add((Object)this.extendedResource);
    }

    public EObject getEObject(String uriFragment) {
        if (this.getContents().size() > 0) {
            return AutosarURIFactory.getEObject((EObject)this.getContents().get(0), uriFragment);
        }
        return null;
    }

    public String getURIFragment(EObject object) {
        return AutosarURIFactory.getURIFragment(object);
    }

    protected void unloaded(InternalEObject internalEObject) {
        this.extendedResource.unloaded((EObject)internalEObject);
    }

    protected boolean isUuidSyncingEnabled() {
        if (Platform.isRunning()) {
            return (Boolean)IAutosarPreferences.SYNC_UUIDS.get();
        }
        return false;
    }

    public synchronized int getUuidUseCount(UUID uuid) {
        UUID repr = this.uuids.get(uuid);
        return repr == null ? 0 : repr.getUseCount();
    }

    public synchronized void incrUuidUseCount(UUID uuid) {
        if (uuid.getData() != null) {
            UUID repr = this.uuids.get(uuid);
            if (repr == null) {
                repr = uuid;
                this.uuids.put(uuid, repr);
            }
            repr.incrUseCount();
        }
    }

    public synchronized void decrUuidUseCount(UUID uuid) {
        UUID repr;
        if (uuid.getData() != null && (repr = this.uuids.get(uuid)) != null) {
            repr.decrUseCount();
            if (repr.getUseCount() == 0) {
                this.uuids.remove(repr);
            }
        }
    }

    public void syncUUIDs() {
        this.uuids.clear();
        TreeIterator iterator = this.getAllContents();
        while (iterator.hasNext()) {
            EObject object = (EObject)iterator.next();
            if (object.eClass().getName().startsWith("ML")) {
                iterator.prune();
                continue;
            }
            if (!(object instanceof GIdentifiable)) continue;
            UUID uuid = new UUID(((GIdentifiable)object).gGetUuid());
            UUID repr = this.uuids.get(uuid);
            if (repr == null) {
                repr = uuid;
                this.uuids.put(uuid, repr);
            }
            repr.incrUseCount();
        }
    }

    protected void loadFromBinaryFile(File binaryFile, Map<?, ?> options) throws IOException {
        InputStream inputStream = new FileInputStream(binaryFile);
        int bufferCapacity = BinaryResourceImpl.getBufferCapacity(options);
        if (bufferCapacity > 0) {
            inputStream = new BufferedInputStream(inputStream, bufferCapacity);
        }
        ExtendedEObjectInputStream eObjectInputStream = new ExtendedEObjectInputStream(inputStream, options){

            protected void preLoadFeatureValues(InternalEObject internalEObject, Map<String, String> destValues) throws IOException {
                int size = this.readCompressedInt();
                int i = 0;
                while (i < size) {
                    String key = this.readString();
                    String dest = this.readString();
                    destValues.put(key, dest);
                    ++i;
                }
            }

            protected void postLoadFeatureValues(InternalEObject internalEObject, Map<String, String> destValues) throws IOException {
                if (destValues != null) {
                    for (String key : destValues.keySet()) {
                        AutosarObjectUtil.setDest((EObject)internalEObject, key, destValues.get(key));
                    }
                }
            }
        };
        eObjectInputStream.loadResource((Resource)this);
    }

    public static File getBinaryFile(File xmlFile) {
        return AutosarXMLResourceImpl.getBinaryPath(xmlFile).toFile();
    }

    private static IPath getBinaryPath(File xmlFile) {
        return Platform.getStateLocation((Bundle)Activator.getDefault().getBundle()).append(new Path(xmlFile.getAbsolutePath()).addFileExtension("arbin"));
    }

    protected static boolean isBinaryResourceAsOldAs(File xmlFile) {
        long xmlStamp = xmlFile.lastModified();
        long binaryStamp = AutosarXMLResourceImpl.getBinaryPath(xmlFile).toFile().lastModified();
        return xmlStamp != -1L && binaryStamp >= xmlStamp;
    }

    protected File getXMLFile() {
        File xmlFile = null;
        URI convertedURI = this.uri;
        if (!this.uri.isFile() && this.uri.scheme() != null && this.uri.scheme().matches("[A-Z]")) {
            convertedURI = URI.createFileURI((String)this.uri.toString());
        }
        if ((convertedURI = CommonPlugin.asLocalURI((URI)this.uri)).isFile()) {
            xmlFile = new File(convertedURI.toFileString());
        }
        return xmlFile;
    }

    public void doLoad(InputStream inputStream, Map<?, ?> options) throws IOException {
        TransactionalEditingDomain editingDomain;
        File xmlFile;
        XMLResource.ResourceHandler handler;
        boolean hasLoadedFromBinaryResource = false;
        XMLLoad xmlLoad = this.createXMLLoad();
        if (options == null) {
            options = Collections.EMPTY_MAP;
        }
        if ((handler = (XMLResource.ResourceHandler)options.get("RESOURCE_HANDLER")) != null) {
            handler.preLoad((XMLResource)this, inputStream, options);
        }
        if (AutosarXMLResourceImpl.useBinaryResources() && AutosarXMLResourceImpl.isBinaryResourceAsOldAs(xmlFile = this.getXMLFile())) {
            this.loadFromBinaryFile(AutosarXMLResourceImpl.getBinaryFile(xmlFile), options);
            hasLoadedFromBinaryResource = true;
        }
        if (!hasLoadedFromBinaryResource) {
            xmlLoad.load((XMLResource)this, inputStream, options);
            xmlLoad = null;
            if (AutosarXMLResourceImpl.useBinaryResources()) {
                this.saveToBinaryResource(options);
            }
        }
        if (handler != null) {
            handler.postLoad((XMLResource)this, inputStream, options);
        }
        if ((editingDomain = TransactionUtil.getEditingDomain((Resource)this)) != null && !editingDomain.isReadOnly((Resource)this) && this.isUuidSyncingEnabled()) {
            this.syncUUIDs();
        }
    }

    public void doSave(OutputStream outputStream, Map<?, ?> options) throws IOException {
        TransactionalEditingDomain editingDomain;
        XMLResource.ResourceHandler handler;
        XMLSave xmlSave = this.createXMLSave();
        if (options == null) {
            options = Collections.EMPTY_MAP;
        }
        if ((handler = (XMLResource.ResourceHandler)options.get("RESOURCE_HANDLER")) != null) {
            handler.preSave((XMLResource)this, outputStream, options);
        }
        xmlSave.save((XMLResource)this, outputStream, options);
        if (AutosarXMLResourceImpl.useBinaryResources()) {
            this.saveToBinaryResource(options);
        }
        if (handler != null) {
            handler.postSave((XMLResource)this, outputStream, options);
        }
        if ((editingDomain = TransactionUtil.getEditingDomain((Resource)this)) != null && !editingDomain.isReadOnly((Resource)this) && this.isUuidSyncingEnabled()) {
            this.syncUUIDs();
        }
    }

    protected void saveToBinaryResource(Map<?, ?> options) throws IOException {
        File xmlFile = this.getXMLFile();
        File binaryFile = AutosarXMLResourceImpl.getBinaryFile(xmlFile);
        File parentFile = binaryFile.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        OutputStream outputStream = new FileOutputStream(binaryFile);
        boolean buffer = true;
        int bufferCapacity = BinaryResourceImpl.getBufferCapacity(options);
        if (bufferCapacity > 0) {
            outputStream = new BufferedOutputStream(outputStream, bufferCapacity);
        } else {
            buffer = false;
        }
        try {
            ExtendedEObjectOutputStream eObjectOutputStream = new ExtendedEObjectOutputStream(outputStream, options){

                protected void handleAdvancedFeatures(InternalEObject internalEObject, BinaryResourceImpl.EObjectOutputStream.Check check) throws IOException {
                    Map<String, String> eObjectAbstractDests = AutosarObjectUtil.getEObjectAbstractDests((EObject)internalEObject);
                    if (eObjectAbstractDests != null) {
                        Set<Map.Entry<String, String>> entrySet = eObjectAbstractDests.entrySet();
                        int size = entrySet.size();
                        this.writeCompressedInt(size);
                        for (Map.Entry<String, String> entry : entrySet) {
                            this.writeString(entry.getKey());
                            this.writeString(entry.getValue());
                        }
                    } else {
                        this.writeCompressedInt(0);
                    }
                }
            };
            eObjectOutputStream.saveResource((Resource)this);
        }
        finally {
            if (buffer) {
                outputStream.flush();
            }
            outputStream.close();
        }
    }

    protected void doUnload() {
        super.doUnload();
        this.uuids.clear();
    }

    private static void deleteDirectoryContent(File dir, IProgressMonitor monitor) {
        try {
            String taskName = NLS.bind((String)Messages.clearing_binaryResources, (Object)dir.toString());
            if (dir.isDirectory()) {
                File f;
                File[] listFiles = dir.listFiles();
                monitor.beginTask(taskName, listFiles.length * 1000);
                File[] fileArray = listFiles;
                int n = listFiles.length;
                int n2 = 0;
                while (n2 < n) {
                    f = fileArray[n2];
                    if (!f.isDirectory()) {
                        f.delete();
                        monitor.worked(1000);
                    }
                    ++n2;
                }
                fileArray = listFiles;
                n = listFiles.length;
                n2 = 0;
                while (n2 < n) {
                    f = fileArray[n2];
                    if (f.isDirectory()) {
                        AutosarXMLResourceImpl.deleteDirectoryContent(f, (IProgressMonitor)new SubProgressMonitor(monitor, 999));
                        f.delete();
                        monitor.worked(1);
                    }
                    ++n2;
                }
            } else {
                monitor.beginTask(taskName, 1);
                monitor.worked(1);
            }
        }
        finally {
            monitor.done();
        }
    }

    public static void clearCache(IProgressMonitor monitor) {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        IPath stateLocation = Platform.getStateLocation((Bundle)Activator.getDefault().getBundle());
        AutosarXMLResourceImpl.deleteDirectoryContent(stateLocation.toFile(), monitor);
    }

    private static boolean useBinaryResources() {
        return Platform.isRunning() && Platform.getPreferencesService().getBoolean(Activator.getDefault().getSymbolicName(), "use_binary_resource", IAutosarPreferenceConstants.PREF_USE_BINARY_RESOURCE_DEFAULT, null);
    }
}

