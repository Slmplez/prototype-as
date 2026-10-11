/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Graphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Map;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LanguageSpecificImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class LGraphicImpl
extends LanguageSpecificImpl
implements LGraphic {
    protected Graphic graphic;
    protected Map map;

    protected LGraphicImpl() {
    }

    protected EClass eStaticClass() {
        return FigurePackage.Literals.LGRAPHIC;
    }

    public Graphic getGraphic() {
        return this.graphic;
    }

    public NotificationChain basicSetGraphic(Graphic newGraphic, NotificationChain msgs) {
        Graphic oldGraphic = this.graphic;
        this.graphic = newGraphic;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldGraphic, (Object)newGraphic);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setGraphic(Graphic newGraphic) {
        if (newGraphic != this.graphic) {
            NotificationChain msgs = null;
            if (this.graphic != null) {
                msgs = ((InternalEObject)this.graphic).eInverseRemove((InternalEObject)this, 8, Graphic.class, msgs);
            }
            if (newGraphic != null) {
                msgs = ((InternalEObject)newGraphic).eInverseAdd((InternalEObject)this, 8, Graphic.class, msgs);
            }
            if ((msgs = this.basicSetGraphic(newGraphic, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newGraphic, (Object)newGraphic));
        }
    }

    public Map getMap() {
        return this.map;
    }

    public NotificationChain basicSetMap(Map newMap, NotificationChain msgs) {
        Map oldMap = this.map;
        this.map = newMap;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMap, (Object)newMap);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMap(Map newMap) {
        if (newMap != this.map) {
            NotificationChain msgs = null;
            if (this.map != null) {
                msgs = ((InternalEObject)this.map).eInverseRemove((InternalEObject)this, 4, Map.class, msgs);
            }
            if (newMap != null) {
                msgs = ((InternalEObject)newMap).eInverseAdd((InternalEObject)this, 4, Map.class, msgs);
            }
            if ((msgs = this.basicSetMap(newMap, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newMap, (Object)newMap));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.graphic != null) {
                    msgs = ((InternalEObject)this.graphic).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetGraphic((Graphic)otherEnd, msgs);
            }
            case 6: {
                if (this.map != null) {
                    msgs = ((InternalEObject)this.map).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetMap((Map)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetGraphic(null, msgs);
            }
            case 6: {
                return this.basicSetMap(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getGraphic();
            }
            case 6: {
                return this.getMap();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setGraphic((Graphic)newValue);
                return;
            }
            case 6: {
                this.setMap((Map)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setGraphic(null);
                return;
            }
            case 6: {
                this.setMap(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.graphic != null;
            }
            case 6: {
                return this.map != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

