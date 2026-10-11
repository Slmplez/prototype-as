/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.bswmodule.bswoverview;

import autosar3x.bswmodule.bswinterfaces.BswModuleDependency;
import autosar3x.bswmodule.bswinterfaces.BswModuleEntry;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswModuleDescription
extends ARElement {
    public EList<BswModuleDependency> getBswModuleDependencies();

    public Integer getModuleId();

    public void setModuleId(Integer var1);

    public void unsetModuleId();

    public boolean isSetModuleId();

    public EList<BswModuleEntry> getOutgoingCallbacks();

    public EList<BswModuleEntry> getProvidedEntries();
}

