/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.edit.provider;

import java.util.Collection;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IEditingDomainItemProvider {
    public Collection<?> getChildren(Object var1);

    public Object getParent(Object var1);

    public Collection<?> getNewChildDescriptors(Object var1, EditingDomain var2, Object var3);

    public Command createCommand(Object var1, EditingDomain var2, Class<? extends Command> var3, CommandParameter var4);
}

