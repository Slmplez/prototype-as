/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.properties;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.internal.localstore.Bucket;
import org.eclipse.core.internal.localstore.BucketTree;
import org.eclipse.core.internal.properties.IPropertyManager;
import org.eclipse.core.internal.properties.PropertyBucket;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PropertyManager2
implements IPropertyManager {
    private static final int MAX_VALUE_SIZE = 2048;
    BucketTree tree;

    public PropertyManager2(Workspace workspace) {
        this.tree = new BucketTree(workspace, new PropertyBucket());
    }

    @Override
    public void closePropertyStore(IResource target) throws CoreException {
        this.tree.getCurrent().save();
        this.tree.getCurrent().flush();
    }

    @Override
    public synchronized void copy(IResource source, IResource destination, int depth) throws CoreException {
        this.copyProperties(source.getFullPath(), destination.getFullPath(), depth);
    }

    private void copyProperties(IPath source, IPath destination, int depth) throws CoreException {
        Assert.isLegal((source.segmentCount() > 0 ? 1 : 0) != 0);
        Assert.isLegal((destination.segmentCount() > 0 ? 1 : 0) != 0);
        Assert.isLegal((source.segmentCount() > 1 || destination.segmentCount() == 1 ? 1 : 0) != 0);
        PropertyCopyVisitor copyVisitor = new PropertyCopyVisitor(source, destination);
        this.tree.accept(copyVisitor, source, Integer.MAX_VALUE);
    }

    @Override
    public synchronized void deleteProperties(IResource target, int depth) throws CoreException {
        this.tree.accept(new Bucket.Visitor(){

            public int visit(Bucket.Entry entry) {
                entry.delete();
                return 0;
            }
        }, target.getFullPath(), depth == 2 ? Integer.MAX_VALUE : depth);
    }

    @Override
    public void deleteResource(IResource target) throws CoreException {
        this.deleteProperties(target, 2);
    }

    @Override
    public synchronized Map<QualifiedName, String> getProperties(IResource target) throws CoreException {
        final HashMap<QualifiedName, String> result = new HashMap<QualifiedName, String>();
        this.tree.accept(new Bucket.Visitor(){

            public int visit(Bucket.Entry entry) {
                PropertyBucket.PropertyEntry propertyEntry = (PropertyBucket.PropertyEntry)entry;
                int propertyCount = propertyEntry.getOccurrences();
                int i = 0;
                while (i < propertyCount) {
                    result.put(propertyEntry.getPropertyName(i), propertyEntry.getPropertyValue(i));
                    ++i;
                }
                return 0;
            }
        }, target.getFullPath(), 0);
        return result;
    }

    @Override
    public synchronized String getProperty(IResource target, QualifiedName name) throws CoreException {
        if (name.getQualifier() == null) {
            String message = Messages.properties_qualifierIsNull;
            throw new ResourceException(567, target.getFullPath(), message, null);
        }
        IPath resourcePath = target.getFullPath();
        PropertyBucket current = (PropertyBucket)this.tree.getCurrent();
        this.tree.loadBucketFor(resourcePath);
        return current.getProperty(resourcePath, name);
    }

    public BucketTree getTree() {
        return this.tree;
    }

    public File getVersionFile() {
        return this.tree.getVersionFile();
    }

    @Override
    public synchronized void setProperty(IResource target, QualifiedName name, String value) throws CoreException {
        Resource resource = (Resource)target;
        ResourceInfo info = resource.getResourceInfo(false, false);
        int flags = resource.getFlags(info);
        resource.checkAccessible(flags);
        if (value != null && value.length() > 2048) {
            String message = NLS.bind((String)Messages.properties_valueTooLong, (Object[])new Object[]{name.getQualifier(), name.getLocalName(), new Integer(2048).toString()});
            throw new ResourceException(568, target.getFullPath(), message, null);
        }
        if (name.getQualifier() == null) {
            String message = Messages.properties_qualifierIsNull;
            throw new ResourceException(568, target.getFullPath(), message, null);
        }
        IPath resourcePath = target.getFullPath();
        this.tree.loadBucketFor(resourcePath);
        PropertyBucket current = (PropertyBucket)this.tree.getCurrent();
        current.setProperty(resourcePath, name, value);
        current.save();
    }

    @Override
    public void shutdown(IProgressMonitor monitor) throws CoreException {
        this.tree.close();
    }

    @Override
    public void startup(IProgressMonitor monitor) {
    }

    class PropertyCopyVisitor
    extends Bucket.Visitor {
        private List<PropertyBucket.PropertyEntry> changes = new ArrayList<PropertyBucket.PropertyEntry>();
        private IPath destination;
        private IPath source;

        public PropertyCopyVisitor(IPath source, IPath destination) {
            this.source = source;
            this.destination = destination;
        }

        public void afterSaving(Bucket bucket) throws CoreException {
            this.saveChanges((PropertyBucket)bucket);
            this.changes.clear();
        }

        private void saveChanges(PropertyBucket bucket) throws CoreException {
            if (this.changes.isEmpty()) {
                return;
            }
            Iterator<PropertyBucket.PropertyEntry> i = this.changes.iterator();
            PropertyBucket.PropertyEntry entry = i.next();
            PropertyManager2.this.tree.loadBucketFor(entry.getPath());
            bucket.setProperties(entry);
            while (i.hasNext()) {
                bucket.setProperties(i.next());
            }
            bucket.save();
        }

        public int visit(Bucket.Entry entry) {
            PropertyBucket.PropertyEntry sourceEntry = (PropertyBucket.PropertyEntry)entry;
            IPath destinationPath = this.destination.append(sourceEntry.getPath().removeFirstSegments(this.source.segmentCount()));
            PropertyBucket.PropertyEntry destinationEntry = new PropertyBucket.PropertyEntry(destinationPath, sourceEntry);
            this.changes.add(destinationEntry);
            return 0;
        }
    }
}

