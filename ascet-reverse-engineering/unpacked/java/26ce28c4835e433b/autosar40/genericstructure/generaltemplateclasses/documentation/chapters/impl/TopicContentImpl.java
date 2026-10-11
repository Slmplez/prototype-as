/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Table;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContent;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TopicContentImpl
extends ARObjectImpl
implements TopicContent {
    protected EList<DocumentationBlock> blockLevelContents;
    protected EList<Table> tables;

    protected TopicContentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ChaptersPackage.Literals.TOPIC_CONTENT;
    }

    @Override
    public EList<DocumentationBlock> getBlockLevelContents() {
        if (this.blockLevelContents == null) {
            this.blockLevelContents = new EObjectContainmentEList(DocumentationBlock.class, (InternalEObject)this, 4);
        }
        return this.blockLevelContents;
    }

    @Override
    public EList<Table> getTables() {
        if (this.tables == null) {
            this.tables = new EObjectContainmentWithInverseEList(Table.class, (InternalEObject)this, 5, 8);
        }
        return this.tables;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getTables()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getBlockLevelContents()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getTables()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBlockLevelContents();
            }
            case 5: {
                return this.getTables();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getBlockLevelContents().clear();
                this.getBlockLevelContents().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getTables().clear();
                this.getTables().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getBlockLevelContents().clear();
                return;
            }
            case 5: {
                this.getTables().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.blockLevelContents != null && !this.blockLevelContents.isEmpty();
            }
            case 5: {
                return this.tables != null && !this.tables.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

