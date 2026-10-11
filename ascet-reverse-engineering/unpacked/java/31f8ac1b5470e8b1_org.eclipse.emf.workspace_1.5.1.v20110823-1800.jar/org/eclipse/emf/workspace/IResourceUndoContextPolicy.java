/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.workspace;

import java.util.List;
import java.util.Set;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.workspace.AbstractResourceUndoContextPolicy;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IResourceUndoContextPolicy {
    public static final IResourceUndoContextPolicy DEFAULT = new AbstractResourceUndoContextPolicy(){};

    public Set<Resource> getContextResources(IUndoableOperation var1, List<? extends Notification> var2);
}

