/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandStack
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 */
package org.eclipse.emf.edit.domain;

import java.util.Collection;
import java.util.List;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandStack;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.OverrideableCommand;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EditingDomain {
    public Resource createResource(String var1);

    public Resource loadResource(String var1);

    public ResourceSet getResourceSet();

    public Command createCommand(Class<? extends Command> var1, CommandParameter var2);

    public Command createOverrideCommand(OverrideableCommand var1);

    public CommandStack getCommandStack();

    public Collection<?> getChildren(Object var1);

    public Object getParent(Object var1);

    public Object getRoot(Object var1);

    public Collection<?> getNewChildDescriptors(Object var1, Object var2);

    public TreeIterator<?> treeIterator(Object var1);

    public List<?> getTreePath(Object var1);

    public Collection<Object> getClipboard();

    public void setClipboard(Collection<Object> var1);

    public boolean getOptimizeCopy();

    public boolean isReadOnly(Resource var1);

    public boolean isControllable(Object var1);
}

