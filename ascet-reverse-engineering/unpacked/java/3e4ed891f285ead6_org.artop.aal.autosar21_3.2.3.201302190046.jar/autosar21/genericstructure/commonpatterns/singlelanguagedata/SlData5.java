/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.genericstructure.commonpatterns.singlelanguagedata;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent5;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SlData5
extends MixedContent5 {
    public EList<String> getAllowBreaks();

    public void unsetAllowBreaks();

    public boolean isSetAllowBreaks();

    public EList<String> getFloats();

    public void unsetFloats();

    public boolean isSetFloats();

    public EList<String> getHelpEntries();

    public void unsetHelpEntries();

    public boolean isSetHelpEntries();

    public EList<String> getKeepWithPrevious();

    public void unsetKeepWithPrevious();

    public boolean isSetKeepWithPrevious();

    public EList<String> getPgwides();

    public void unsetPgwides();

    public boolean isSetPgwides();

    public EList<String> getXmlspaces();

    public void unsetXmlspaces();

    public boolean isSetXmlspaces();
}

