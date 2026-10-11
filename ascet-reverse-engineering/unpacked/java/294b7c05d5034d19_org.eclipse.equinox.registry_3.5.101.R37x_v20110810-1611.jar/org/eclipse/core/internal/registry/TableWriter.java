/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.registry;

import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.ConfigurationElementHandle;
import org.eclipse.core.internal.registry.ConfigurationElementMulti;
import org.eclipse.core.internal.registry.Contribution;
import org.eclipse.core.internal.registry.ExtensionHandle;
import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.ExtensionPointHandle;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.KeyedElement;
import org.eclipse.core.internal.registry.KeyedHashSet;
import org.eclipse.core.internal.registry.OffsetTable;
import org.eclipse.core.internal.registry.RegistryIndexElement;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.RegistryObjectManager;
import org.eclipse.core.internal.registry.RegistryProperties;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.spi.RegistryContributor;

public class TableWriter {
    private static final byte fileError = 0;
    File mainDataFile;
    File extraDataFile;
    File tableFile;
    File contributionsFile;
    File contributorsFile;
    File namespacesFile;
    File orphansFile;
    DataOutputStream mainOutput;
    DataOutputStream extraOutput;
    FileOutputStream mainFileOutput = null;
    FileOutputStream extraFileOutput = null;
    private OffsetTable offsets;
    private ExtensionRegistry registry;
    private RegistryObjectManager objectManager;

    void setMainDataFile(File main) {
        this.mainDataFile = main;
    }

    void setExtraDataFile(File extra) {
        this.extraDataFile = extra;
    }

    void setTableFile(File table) {
        this.tableFile = table;
    }

    void setContributionsFile(File fileName) {
        this.contributionsFile = fileName;
    }

    void setContributorsFile(File fileName) {
        this.contributorsFile = fileName;
    }

    void setNamespacesFile(File fileName) {
        this.namespacesFile = fileName;
    }

    void setOrphansFile(File orphan) {
        this.orphansFile = orphan;
    }

    public TableWriter(ExtensionRegistry registry) {
        this.registry = registry;
    }

    private int getExtraDataPosition() {
        return this.extraOutput.size();
    }

    public boolean saveCache(RegistryObjectManager objectManager, long timestamp) {
        this.objectManager = objectManager;
        try {
            if (!this.openFiles()) {
                return false;
            }
            try {
                this.saveExtensionRegistry(timestamp);
            }
            catch (IOException io) {
                this.log(new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.meta_registryCacheWriteProblems, (Throwable)io));
                this.closeFiles();
                return false;
            }
        }
        finally {
            this.closeFiles();
        }
        return true;
    }

    private boolean openFiles() {
        try {
            this.mainFileOutput = new FileOutputStream(this.mainDataFile);
            this.mainOutput = new DataOutputStream(new BufferedOutputStream(this.mainFileOutput));
            this.extraFileOutput = new FileOutputStream(this.extraDataFile);
            this.extraOutput = new DataOutputStream(new BufferedOutputStream(this.extraFileOutput));
        }
        catch (FileNotFoundException e) {
            if (this.mainFileOutput != null) {
                try {
                    this.mainFileOutput.close();
                }
                catch (IOException iOException) {}
            }
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.meta_unableToCreateCache, (Throwable)e));
            return false;
        }
        return true;
    }

    private void closeFiles() {
        try {
            if (this.mainOutput != null) {
                this.mainOutput.flush();
                if (this.mainFileOutput.getFD().valid()) {
                    this.mainFileOutput.getFD().sync();
                }
                this.mainOutput.close();
            }
        }
        catch (IOException e) {
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.meta_registryCacheWriteProblems, (Throwable)e));
            e.printStackTrace();
        }
        try {
            if (this.extraOutput != null) {
                this.extraOutput.flush();
                if (this.extraFileOutput.getFD().valid()) {
                    this.extraFileOutput.getFD().sync();
                }
                this.extraOutput.close();
            }
        }
        catch (IOException e) {
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.meta_registryCacheWriteProblems, (Throwable)e));
            e.printStackTrace();
        }
    }

    private void saveExtensionRegistry(long timestamp) throws IOException {
        ExtensionPointHandle[] points = this.objectManager.getExtensionPointsHandles();
        this.offsets = new OffsetTable(this.objectManager.getNextId());
        int i = 0;
        while (i < points.length) {
            this.saveExtensionPoint(points[i]);
            ++i;
        }
        this.saveOrphans();
        this.saveContributions(this.objectManager.getContributions());
        this.saveContributors(this.objectManager.getContributors());
        this.saveNamespaces(this.objectManager.getNamespacesIndex());
        this.closeFiles();
        this.saveTables(timestamp);
    }

    private void saveContributions(KeyedHashSet[] contributions) throws IOException {
        Contribution element;
        FileOutputStream fosNamespace = new FileOutputStream(this.contributionsFile);
        DataOutputStream outputNamespace = new DataOutputStream(new BufferedOutputStream(fosNamespace));
        KeyedElement[] newElements = contributions[0].elements();
        KeyedElement[] formerElements = contributions[1].elements();
        int cacheSize = 0;
        int i = 0;
        while (i < newElements.length) {
            if (((Contribution)newElements[i]).shouldPersist()) {
                ++cacheSize;
            }
            ++i;
        }
        i = 0;
        while (i < formerElements.length) {
            if (((Contribution)formerElements[i]).shouldPersist()) {
                ++cacheSize;
            }
            ++i;
        }
        outputNamespace.writeInt(cacheSize);
        i = 0;
        while (i < newElements.length) {
            element = (Contribution)newElements[i];
            if (element.shouldPersist()) {
                this.writeStringOrNull(element.getContributorId(), outputNamespace);
                this.saveArray(this.filterContributionChildren(element), outputNamespace);
            }
            ++i;
        }
        i = 0;
        while (i < formerElements.length) {
            element = (Contribution)formerElements[i];
            if (element.shouldPersist()) {
                this.writeStringOrNull(element.getContributorId(), outputNamespace);
                this.saveArray(this.filterContributionChildren(element), outputNamespace);
            }
            ++i;
        }
        outputNamespace.flush();
        fosNamespace.getFD().sync();
        outputNamespace.close();
    }

    private int[] filterContributionChildren(Contribution element) {
        int[] extensionPoints = this.filter(element.getExtensionPoints());
        int[] extensions = this.filter(element.getExtensions());
        int[] filteredRawChildren = new int[2 + extensionPoints.length + extensions.length];
        System.arraycopy(extensionPoints, 0, filteredRawChildren, 2, extensionPoints.length);
        System.arraycopy(extensions, 0, filteredRawChildren, 2 + extensionPoints.length, extensions.length);
        filteredRawChildren[0] = extensionPoints.length;
        filteredRawChildren[1] = extensions.length;
        return filteredRawChildren;
    }

    private void saveNamespaces(KeyedHashSet namespacesIndex) throws IOException {
        RegistryIndexElement element;
        FileOutputStream fosNamespace = new FileOutputStream(this.namespacesFile);
        DataOutputStream outputNamespace = new DataOutputStream(new BufferedOutputStream(fosNamespace));
        KeyedElement[] elements = namespacesIndex.elements();
        KeyedElement[] cachedElements = new KeyedElement[elements.length];
        int cacheSize = 0;
        int i = 0;
        while (i < elements.length) {
            element = (RegistryIndexElement)elements[i];
            int[] extensionPoints = this.filter(element.getExtensionPoints());
            int[] extensions = this.filter(element.getExtensions());
            if (extensionPoints.length != 0 || extensions.length != 0) {
                RegistryIndexElement cachedElement = new RegistryIndexElement((String)element.getKey(), extensionPoints, extensions);
                cachedElements[cacheSize] = cachedElement;
                ++cacheSize;
            }
            ++i;
        }
        outputNamespace.writeInt(cacheSize);
        i = 0;
        while (i < cacheSize) {
            element = (RegistryIndexElement)cachedElements[i];
            this.writeStringOrNull((String)element.getKey(), outputNamespace);
            this.saveArray(element.getExtensionPoints(), outputNamespace);
            this.saveArray(element.getExtensions(), outputNamespace);
            ++i;
        }
        outputNamespace.flush();
        fosNamespace.getFD().sync();
        outputNamespace.close();
    }

    private void saveContributors(HashMap contributors) throws IOException {
        FileOutputStream fosContributors = new FileOutputStream(this.contributorsFile);
        DataOutputStream outputContributors = new DataOutputStream(new BufferedOutputStream(fosContributors));
        Collection entries = contributors.values();
        outputContributors.writeInt(entries.size());
        Iterator i = entries.iterator();
        while (i.hasNext()) {
            RegistryContributor contributor = (RegistryContributor)i.next();
            this.writeStringOrNull(contributor.getActualId(), outputContributors);
            this.writeStringOrNull(contributor.getActualName(), outputContributors);
            this.writeStringOrNull(contributor.getId(), outputContributors);
            this.writeStringOrNull(contributor.getName(), outputContributors);
        }
        outputContributors.flush();
        fosContributors.getFD().sync();
        outputContributors.close();
    }

    private void saveTables(long registryTimeStamp) throws IOException {
        FileOutputStream fosTable = new FileOutputStream(this.tableFile);
        DataOutputStream outputTable = new DataOutputStream(new BufferedOutputStream(fosTable));
        this.writeCacheHeader(outputTable, registryTimeStamp);
        outputTable.writeInt(this.objectManager.getNextId());
        this.offsets.save(outputTable);
        this.objectManager.getExtensionPoints().save(outputTable, this.objectManager);
        outputTable.flush();
        fosTable.getFD().sync();
        outputTable.close();
    }

    private void writeCacheHeader(DataOutputStream output, long registryTimeStamp) throws IOException {
        output.writeInt(7);
        output.writeLong(this.registry.computeState());
        output.writeLong(registryTimeStamp);
        output.writeLong(this.mainDataFile.length());
        output.writeLong(this.extraDataFile.length());
        output.writeLong(this.contributionsFile.length());
        output.writeLong(this.contributorsFile.length());
        output.writeLong(this.namespacesFile.length());
        output.writeLong(this.orphansFile.length());
        output.writeUTF(RegistryProperties.getProperty("osgi.os", ""));
        output.writeUTF(RegistryProperties.getProperty("osgi.ws", ""));
        output.writeUTF(RegistryProperties.getProperty("osgi.nl", ""));
        output.writeBoolean(this.registry.isMultiLanguage());
    }

    private void saveArray(int[] array, DataOutputStream out) throws IOException {
        if (array == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(array.length);
        int i = 0;
        while (i < array.length) {
            out.writeInt(array[i]);
            ++i;
        }
    }

    private void saveExtensionPoint(ExtensionPointHandle xpt) throws IOException {
        if (!xpt.shouldPersist()) {
            return;
        }
        this.offsets.put(xpt.getId(), this.mainOutput.size());
        this.mainOutput.writeInt(xpt.getId());
        this.saveArray(this.filter(xpt.getObject().getRawChildren()), this.mainOutput);
        this.mainOutput.writeInt(this.getExtraDataPosition());
        this.saveExtensionPointData(xpt);
        this.saveExtensions(xpt.getExtensions(), this.mainOutput);
    }

    private void saveExtension(ExtensionHandle ext, DataOutputStream outputStream) throws IOException {
        if (!ext.shouldPersist()) {
            return;
        }
        this.offsets.put(ext.getId(), outputStream.size());
        outputStream.writeInt(ext.getId());
        this.writeStringOrNull(ext.getSimpleIdentifier(), outputStream);
        this.writeStringOrNull(ext.getNamespaceIdentifier(), outputStream);
        this.saveArray(this.filter(ext.getObject().getRawChildren()), outputStream);
        outputStream.writeInt(this.getExtraDataPosition());
        this.saveExtensionData(ext);
    }

    private void writeStringArray(String[] array, DataOutputStream outputStream) throws IOException {
        outputStream.writeInt(array == null ? 0 : array.length);
        int i = 0;
        while (i < (array == null ? 0 : array.length)) {
            this.writeStringOrNull(array[i], outputStream);
            ++i;
        }
    }

    private void writeStringArray(String[] array, int size, DataOutputStream outputStream) throws IOException {
        outputStream.writeInt(array == null ? 0 : size);
        if (array == null) {
            return;
        }
        int i = 0;
        while (i < size) {
            this.writeStringOrNull(array[i], outputStream);
            ++i;
        }
    }

    private void saveConfigurationElement(ConfigurationElementHandle element, DataOutputStream outputStream, DataOutputStream extraOutputStream, int depth) throws IOException {
        if (!element.shouldPersist()) {
            return;
        }
        DataOutputStream currentOutput = outputStream;
        if (depth > 2) {
            currentOutput = extraOutputStream;
        }
        this.offsets.put(element.getId(), currentOutput.size());
        currentOutput.writeInt(element.getId());
        ConfigurationElement actualCe = (ConfigurationElement)element.getObject();
        this.writeStringOrNull(actualCe.getContributorId(), currentOutput);
        this.writeStringOrNull(actualCe.getName(), currentOutput);
        currentOutput.writeInt(actualCe.parentId);
        currentOutput.writeByte(actualCe.parentType);
        currentOutput.writeInt(depth > 1 ? extraOutputStream.size() : -1);
        this.writeStringArray(actualCe.getPropertiesAndValue(), currentOutput);
        this.saveArray(this.filter(actualCe.getRawChildren()), currentOutput);
        if (actualCe instanceof ConfigurationElementMulti) {
            ConfigurationElementMulti multiCE = (ConfigurationElementMulti)actualCe;
            int NLs = multiCE.getNumCachedLocales();
            currentOutput.writeInt(NLs);
            if (NLs != 0) {
                this.writeStringArray(multiCE.getCachedLocales(), NLs, currentOutput);
                String[][] translated = multiCE.getCachedTranslations();
                int i = 0;
                while (i < NLs) {
                    this.writeStringArray(translated[i], currentOutput);
                    ++i;
                }
            }
        }
        ConfigurationElementHandle[] childrenCEs = (ConfigurationElementHandle[])element.getChildren();
        int i = 0;
        while (i < childrenCEs.length) {
            this.saveConfigurationElement(childrenCEs[i], outputStream, extraOutputStream, depth + 1);
            ++i;
        }
    }

    private void saveExtensions(IExtension[] exts, DataOutputStream outputStream) throws IOException {
        int i = 0;
        while (i < exts.length) {
            this.saveExtension((ExtensionHandle)exts[i], outputStream);
            ++i;
        }
        i = 0;
        while (i < exts.length) {
            if (((ExtensionHandle)exts[i]).shouldPersist()) {
                IConfigurationElement[] ces = exts[i].getConfigurationElements();
                int countCElements = 0;
                boolean[] save = new boolean[ces.length];
                int j = 0;
                while (j < ces.length) {
                    if (((ConfigurationElementHandle)ces[j]).shouldPersist()) {
                        save[j] = true;
                        ++countCElements;
                    } else {
                        save[j] = false;
                    }
                    ++j;
                }
                outputStream.writeInt(countCElements);
                j = 0;
                while (j < ces.length) {
                    if (save[j]) {
                        this.saveConfigurationElement((ConfigurationElementHandle)ces[j], outputStream, this.extraOutput, 1);
                    }
                    ++j;
                }
            }
            ++i;
        }
    }

    private void saveExtensionPointData(ExtensionPointHandle xpt) throws IOException {
        this.writeStringOrNull(xpt.getLabelAsIs(), this.extraOutput);
        this.writeStringOrNull(xpt.getSchemaReference(), this.extraOutput);
        this.writeStringOrNull(xpt.getUniqueIdentifier(), this.extraOutput);
        this.writeStringOrNull(xpt.getNamespaceIdentifier(), this.extraOutput);
        this.writeStringOrNull(((ExtensionPoint)xpt.getObject()).getContributorId(), this.extraOutput);
    }

    private void saveExtensionData(ExtensionHandle extension) throws IOException {
        this.writeStringOrNull(extension.getLabelAsIs(), this.extraOutput);
        this.writeStringOrNull(extension.getExtensionPointUniqueIdentifier(), this.extraOutput);
        this.writeStringOrNull(extension.getContributorId(), this.extraOutput);
    }

    private void writeStringOrNull(String string, DataOutputStream out) throws IOException {
        if (string == null) {
            out.writeByte(0);
        } else {
            out.writeByte(1);
            out.writeUTF(string);
        }
    }

    private void saveOrphans() throws IOException {
        Map.Entry entry;
        Map orphans = this.objectManager.getOrphanExtensions();
        HashMap filteredOrphans = new HashMap();
        Iterator iter = orphans.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry2 = iter.next();
            int[] filteredValue = this.filter((int[])entry2.getValue());
            if (filteredValue.length == 0) continue;
            filteredOrphans.put(entry2.getKey(), filteredValue);
        }
        FileOutputStream fosOrphan = new FileOutputStream(this.orphansFile);
        DataOutputStream outputOrphan = new DataOutputStream(new BufferedOutputStream(fosOrphan));
        outputOrphan.writeInt(filteredOrphans.size());
        Set elements = filteredOrphans.entrySet();
        Iterator iter2 = elements.iterator();
        while (iter2.hasNext()) {
            entry = iter2.next();
            outputOrphan.writeUTF((String)entry.getKey());
            this.saveArray((int[])entry.getValue(), outputOrphan);
        }
        iter2 = elements.iterator();
        while (iter2.hasNext()) {
            entry = iter2.next();
            this.mainOutput.writeInt(((int[])entry.getValue()).length);
            this.saveExtensions((IExtension[])this.objectManager.getHandles((int[])entry.getValue(), (byte)2), this.mainOutput);
        }
        outputOrphan.flush();
        fosOrphan.getFD().sync();
        outputOrphan.close();
    }

    private void log(Status status) {
        this.registry.log((IStatus)status);
    }

    private int[] filter(int[] input) {
        boolean[] save = new boolean[input.length];
        int resultSize = 0;
        int i = 0;
        while (i < input.length) {
            if (this.objectManager.shouldPersist(input[i])) {
                save[i] = true;
                ++resultSize;
            } else {
                save[i] = false;
            }
            ++i;
        }
        int[] result = new int[resultSize];
        int pos = 0;
        int i2 = 0;
        while (i2 < input.length) {
            if (save[i2]) {
                result[pos] = input[i2];
                ++pos;
            }
            ++i2;
        }
        return result;
    }
}

