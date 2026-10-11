/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GSwBaseType
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.datadefproperties.impl;

import autosar3x.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar3x.commonstructure.auxillaryobjects.SwCodeSyntax;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayout;
import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.SwArraysize;
import autosar3x.commonstructure.datadefproperties.SwBitRepresentation;
import autosar3x.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.datadefproperties.SwDataDependency;
import autosar3x.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar3x.commonstructure.datadefproperties.SwPointer;
import autosar3x.commonstructure.datadefproperties.SwTextProps;
import autosar3x.commonstructure.datadefproperties.SwVariableAccessImplPolicyEnum;
import autosar3x.commonstructure.datadefproperties.SwVariableRef;
import autosar3x.commonstructure.globalconstraints.DataConstr;
import autosar3x.genericstructure.commonpatterns.annotation.Annotation;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.computationmethod.CompuMethod;
import autosar3x.swcomponent.datatype.constants.PrimitiveSpecification;
import autosar3x.swcomponent.datatype.units.Unit;
import gautosar.gcommonstructure.gbasetypes.GSwBaseType;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwDataDefPropsImpl
extends ARObjectImpl
implements SwDataDefProps,
IReferringClass {
    protected EList<Annotation> annotations;
    protected SwAddrMethod swAddrMethod;
    protected SwBaseType baseType;
    protected SwBitRepresentation swBitRepresentation;
    protected static final SwCalibrationAccessEnum SW_CALIBRATION_ACCESS_EDEFAULT = SwCalibrationAccessEnum.READ_ONLY;
    protected SwCalibrationAccessEnum swCalibrationAccess = SW_CALIBRATION_ACCESS_EDEFAULT;
    protected boolean swCalibrationAccessESet;
    protected SwArraysize swValueBlockSize;
    protected SwCalprmAxisSet swCalprmAxisSet;
    protected SwTextProps swTextProps;
    protected SwCodeSyntax swCodeSyntax;
    protected CompuMethod compuMethod;
    protected DataConstr dataConstr;
    protected SwDataDependency swDataDependency;
    protected static final String DISPLAY_FORMAT_EDEFAULT = "";
    protected String displayFormat = "";
    protected boolean displayFormatESet;
    protected PrimitiveSpecification invalidValue;
    protected SwVariableRef swHostVariable;
    protected static final SwImplPolicyEnum SW_IMPL_POLICY_EDEFAULT = SwImplPolicyEnum.MEASUREMENT_POINT;
    protected SwImplPolicyEnum swImplPolicy = SW_IMPL_POLICY_EDEFAULT;
    protected boolean swImplPolicyESet;
    protected SwPointer swPointer;
    protected SwRecordLayout swRecordLayout;
    protected Unit unit;
    protected static final SwVariableAccessImplPolicyEnum SW_VARIABLE_ACCESS_IMPL_POLICY_EDEFAULT = SwVariableAccessImplPolicyEnum.OPTIMIZED;
    protected SwVariableAccessImplPolicyEnum swVariableAccessImplPolicy = SW_VARIABLE_ACCESS_IMPL_POLICY_EDEFAULT;
    protected boolean swVariableAccessImplPolicyESet;

    protected SwDataDefPropsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_DATA_DEF_PROPS;
    }

    public GSwBaseType gGetBaseType() {
        return this.getBaseType();
    }

    public void gSetBaseType(GSwBaseType newGBaseType) {
        this.setBaseType((SwBaseType)newGBaseType);
    }

    public GValueSpecification gGetInvalidValue() {
        return this.getInvalidValue();
    }

    public void gSetInvalidValue(GValueSpecification newGInvalidValue) {
        this.setInvalidValue((PrimitiveSpecification)newGInvalidValue);
    }

    public GCompuMethod gGetCompuMethod() {
        return this.getCompuMethod();
    }

    public void gSetCompuMethod(GCompuMethod newGCompuMethod) {
        this.setCompuMethod((CompuMethod)newGCompuMethod);
    }

    @Override
    public EList<Annotation> getAnnotations() {
        if (this.annotations == null) {
            this.annotations = new EObjectContainmentWithInverseEList(Annotation.class, (InternalEObject)this, 7, 9);
        }
        return this.annotations;
    }

    @Override
    public SwAddrMethod getSwAddrMethod() {
        if (this.swAddrMethod != null && this.swAddrMethod.eIsProxy()) {
            InternalEObject oldSwAddrMethod = (InternalEObject)this.swAddrMethod;
            this.swAddrMethod = (SwAddrMethod)this.eResolveProxy(oldSwAddrMethod);
            if (this.swAddrMethod != oldSwAddrMethod && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldSwAddrMethod, (Object)this.swAddrMethod));
            }
        }
        return this.swAddrMethod;
    }

    public SwAddrMethod basicGetSwAddrMethod() {
        return this.swAddrMethod;
    }

    @Override
    public void setSwAddrMethod(SwAddrMethod newSwAddrMethod) {
        SwAddrMethod oldSwAddrMethod = this.swAddrMethod;
        this.swAddrMethod = newSwAddrMethod;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwAddrMethod, (Object)this.swAddrMethod));
        }
    }

    @Override
    public SwBaseType getBaseType() {
        if (this.baseType != null && this.baseType.eIsProxy()) {
            InternalEObject oldBaseType = (InternalEObject)this.baseType;
            this.baseType = (SwBaseType)this.eResolveProxy(oldBaseType);
            if (this.baseType != oldBaseType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldBaseType, (Object)this.baseType));
            }
        }
        return this.baseType;
    }

    public SwBaseType basicGetBaseType() {
        return this.baseType;
    }

    @Override
    public void setBaseType(SwBaseType newBaseType) {
        SwBaseType oldBaseType = this.baseType;
        this.baseType = newBaseType;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldBaseType, (Object)this.baseType));
        }
    }

    @Override
    public SwBitRepresentation getSwBitRepresentation() {
        return this.swBitRepresentation;
    }

    public NotificationChain basicSetSwBitRepresentation(SwBitRepresentation newSwBitRepresentation, NotificationChain msgs) {
        SwBitRepresentation oldSwBitRepresentation = this.swBitRepresentation;
        this.swBitRepresentation = newSwBitRepresentation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSwBitRepresentation, (Object)newSwBitRepresentation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwBitRepresentation(SwBitRepresentation newSwBitRepresentation) {
        if (newSwBitRepresentation != this.swBitRepresentation) {
            NotificationChain msgs = null;
            if (this.swBitRepresentation != null) {
                msgs = ((InternalEObject)this.swBitRepresentation).eInverseRemove((InternalEObject)this, 4, SwBitRepresentation.class, msgs);
            }
            if (newSwBitRepresentation != null) {
                msgs = ((InternalEObject)newSwBitRepresentation).eInverseAdd((InternalEObject)this, 4, SwBitRepresentation.class, msgs);
            }
            if ((msgs = this.basicSetSwBitRepresentation(newSwBitRepresentation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newSwBitRepresentation, (Object)newSwBitRepresentation));
        }
    }

    @Override
    public SwCalibrationAccessEnum getSwCalibrationAccess() {
        return this.swCalibrationAccess;
    }

    @Override
    public void setSwCalibrationAccess(SwCalibrationAccessEnum newSwCalibrationAccess) {
        SwCalibrationAccessEnum oldSwCalibrationAccess = this.swCalibrationAccess;
        this.swCalibrationAccess = newSwCalibrationAccess == null ? SW_CALIBRATION_ACCESS_EDEFAULT : newSwCalibrationAccess;
        boolean oldSwCalibrationAccessESet = this.swCalibrationAccessESet;
        this.swCalibrationAccessESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldSwCalibrationAccess, (Object)this.swCalibrationAccess, !oldSwCalibrationAccessESet));
        }
    }

    @Override
    public void unsetSwCalibrationAccess() {
        SwCalibrationAccessEnum oldSwCalibrationAccess = this.swCalibrationAccess;
        boolean oldSwCalibrationAccessESet = this.swCalibrationAccessESet;
        this.swCalibrationAccess = SW_CALIBRATION_ACCESS_EDEFAULT;
        this.swCalibrationAccessESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldSwCalibrationAccess, (Object)SW_CALIBRATION_ACCESS_EDEFAULT, oldSwCalibrationAccessESet));
        }
    }

    @Override
    public boolean isSetSwCalibrationAccess() {
        return this.swCalibrationAccessESet;
    }

    @Override
    public SwArraysize getSwValueBlockSize() {
        return this.swValueBlockSize;
    }

    public NotificationChain basicSetSwValueBlockSize(SwArraysize newSwValueBlockSize, NotificationChain msgs) {
        SwArraysize oldSwValueBlockSize = this.swValueBlockSize;
        this.swValueBlockSize = newSwValueBlockSize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldSwValueBlockSize, (Object)newSwValueBlockSize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwValueBlockSize(SwArraysize newSwValueBlockSize) {
        if (newSwValueBlockSize != this.swValueBlockSize) {
            NotificationChain msgs = null;
            if (this.swValueBlockSize != null) {
                msgs = ((InternalEObject)this.swValueBlockSize).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newSwValueBlockSize != null) {
                msgs = ((InternalEObject)newSwValueBlockSize).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetSwValueBlockSize(newSwValueBlockSize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newSwValueBlockSize, (Object)newSwValueBlockSize));
        }
    }

    @Override
    public SwCalprmAxisSet getSwCalprmAxisSet() {
        return this.swCalprmAxisSet;
    }

    public NotificationChain basicSetSwCalprmAxisSet(SwCalprmAxisSet newSwCalprmAxisSet, NotificationChain msgs) {
        SwCalprmAxisSet oldSwCalprmAxisSet = this.swCalprmAxisSet;
        this.swCalprmAxisSet = newSwCalprmAxisSet;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldSwCalprmAxisSet, (Object)newSwCalprmAxisSet);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwCalprmAxisSet(SwCalprmAxisSet newSwCalprmAxisSet) {
        if (newSwCalprmAxisSet != this.swCalprmAxisSet) {
            NotificationChain msgs = null;
            if (this.swCalprmAxisSet != null) {
                msgs = ((InternalEObject)this.swCalprmAxisSet).eInverseRemove((InternalEObject)this, 4, SwCalprmAxisSet.class, msgs);
            }
            if (newSwCalprmAxisSet != null) {
                msgs = ((InternalEObject)newSwCalprmAxisSet).eInverseAdd((InternalEObject)this, 4, SwCalprmAxisSet.class, msgs);
            }
            if ((msgs = this.basicSetSwCalprmAxisSet(newSwCalprmAxisSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newSwCalprmAxisSet, (Object)newSwCalprmAxisSet));
        }
    }

    @Override
    public SwTextProps getSwTextProps() {
        return this.swTextProps;
    }

    public NotificationChain basicSetSwTextProps(SwTextProps newSwTextProps, NotificationChain msgs) {
        SwTextProps oldSwTextProps = this.swTextProps;
        this.swTextProps = newSwTextProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldSwTextProps, (Object)newSwTextProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwTextProps(SwTextProps newSwTextProps) {
        if (newSwTextProps != this.swTextProps) {
            NotificationChain msgs = null;
            if (this.swTextProps != null) {
                msgs = ((InternalEObject)this.swTextProps).eInverseRemove((InternalEObject)this, 4, SwTextProps.class, msgs);
            }
            if (newSwTextProps != null) {
                msgs = ((InternalEObject)newSwTextProps).eInverseAdd((InternalEObject)this, 4, SwTextProps.class, msgs);
            }
            if ((msgs = this.basicSetSwTextProps(newSwTextProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newSwTextProps, (Object)newSwTextProps));
        }
    }

    @Override
    public SwCodeSyntax getSwCodeSyntax() {
        if (this.swCodeSyntax != null && this.swCodeSyntax.eIsProxy()) {
            InternalEObject oldSwCodeSyntax = (InternalEObject)this.swCodeSyntax;
            this.swCodeSyntax = (SwCodeSyntax)this.eResolveProxy(oldSwCodeSyntax);
            if (this.swCodeSyntax != oldSwCodeSyntax && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 15, (Object)oldSwCodeSyntax, (Object)this.swCodeSyntax));
            }
        }
        return this.swCodeSyntax;
    }

    public SwCodeSyntax basicGetSwCodeSyntax() {
        return this.swCodeSyntax;
    }

    @Override
    public void setSwCodeSyntax(SwCodeSyntax newSwCodeSyntax) {
        SwCodeSyntax oldSwCodeSyntax = this.swCodeSyntax;
        this.swCodeSyntax = newSwCodeSyntax;
        AutosarObjectUtil.setDest((EObject)this, (int)15, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldSwCodeSyntax, (Object)this.swCodeSyntax));
        }
    }

    @Override
    public CompuMethod getCompuMethod() {
        if (this.compuMethod != null && this.compuMethod.eIsProxy()) {
            InternalEObject oldCompuMethod = (InternalEObject)this.compuMethod;
            this.compuMethod = (CompuMethod)this.eResolveProxy(oldCompuMethod);
            if (this.compuMethod != oldCompuMethod && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 16, (Object)oldCompuMethod, (Object)this.compuMethod));
            }
        }
        return this.compuMethod;
    }

    public CompuMethod basicGetCompuMethod() {
        return this.compuMethod;
    }

    @Override
    public void setCompuMethod(CompuMethod newCompuMethod) {
        CompuMethod oldCompuMethod = this.compuMethod;
        this.compuMethod = newCompuMethod;
        AutosarObjectUtil.setDest((EObject)this, (int)16, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldCompuMethod, (Object)this.compuMethod));
        }
    }

    @Override
    public DataConstr getDataConstr() {
        if (this.dataConstr != null && this.dataConstr.eIsProxy()) {
            InternalEObject oldDataConstr = (InternalEObject)this.dataConstr;
            this.dataConstr = (DataConstr)this.eResolveProxy(oldDataConstr);
            if (this.dataConstr != oldDataConstr && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 17, (Object)oldDataConstr, (Object)this.dataConstr));
            }
        }
        return this.dataConstr;
    }

    public DataConstr basicGetDataConstr() {
        return this.dataConstr;
    }

    @Override
    public void setDataConstr(DataConstr newDataConstr) {
        DataConstr oldDataConstr = this.dataConstr;
        this.dataConstr = newDataConstr;
        AutosarObjectUtil.setDest((EObject)this, (int)17, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldDataConstr, (Object)this.dataConstr));
        }
    }

    @Override
    public SwDataDependency getSwDataDependency() {
        return this.swDataDependency;
    }

    public NotificationChain basicSetSwDataDependency(SwDataDependency newSwDataDependency, NotificationChain msgs) {
        SwDataDependency oldSwDataDependency = this.swDataDependency;
        this.swDataDependency = newSwDataDependency;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldSwDataDependency, (Object)newSwDataDependency);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwDataDependency(SwDataDependency newSwDataDependency) {
        if (newSwDataDependency != this.swDataDependency) {
            NotificationChain msgs = null;
            if (this.swDataDependency != null) {
                msgs = ((InternalEObject)this.swDataDependency).eInverseRemove((InternalEObject)this, 4, SwDataDependency.class, msgs);
            }
            if (newSwDataDependency != null) {
                msgs = ((InternalEObject)newSwDataDependency).eInverseAdd((InternalEObject)this, 4, SwDataDependency.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDependency(newSwDataDependency, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newSwDataDependency, (Object)newSwDataDependency));
        }
    }

    @Override
    public String getDisplayFormat() {
        return this.displayFormat;
    }

    @Override
    public void setDisplayFormat(String newDisplayFormat) {
        String oldDisplayFormat = this.displayFormat;
        this.displayFormat = newDisplayFormat;
        boolean oldDisplayFormatESet = this.displayFormatESet;
        this.displayFormatESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldDisplayFormat, (Object)this.displayFormat, !oldDisplayFormatESet));
        }
    }

    @Override
    public void unsetDisplayFormat() {
        String oldDisplayFormat = this.displayFormat;
        boolean oldDisplayFormatESet = this.displayFormatESet;
        this.displayFormat = DISPLAY_FORMAT_EDEFAULT;
        this.displayFormatESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldDisplayFormat, (Object)DISPLAY_FORMAT_EDEFAULT, oldDisplayFormatESet));
        }
    }

    @Override
    public boolean isSetDisplayFormat() {
        return this.displayFormatESet;
    }

    @Override
    public PrimitiveSpecification getInvalidValue() {
        return this.invalidValue;
    }

    public NotificationChain basicSetInvalidValue(PrimitiveSpecification newInvalidValue, NotificationChain msgs) {
        PrimitiveSpecification oldInvalidValue = this.invalidValue;
        this.invalidValue = newInvalidValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldInvalidValue, (Object)newInvalidValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInvalidValue(PrimitiveSpecification newInvalidValue) {
        if (newInvalidValue != this.invalidValue) {
            NotificationChain msgs = null;
            if (this.invalidValue != null) {
                msgs = ((InternalEObject)this.invalidValue).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newInvalidValue != null) {
                msgs = ((InternalEObject)newInvalidValue).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetInvalidValue(newInvalidValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newInvalidValue, (Object)newInvalidValue));
        }
    }

    @Override
    public SwVariableRef getSwHostVariable() {
        return this.swHostVariable;
    }

    public NotificationChain basicSetSwHostVariable(SwVariableRef newSwHostVariable, NotificationChain msgs) {
        SwVariableRef oldSwHostVariable = this.swHostVariable;
        this.swHostVariable = newSwHostVariable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldSwHostVariable, (Object)newSwHostVariable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwHostVariable(SwVariableRef newSwHostVariable) {
        if (newSwHostVariable != this.swHostVariable) {
            NotificationChain msgs = null;
            if (this.swHostVariable != null) {
                msgs = ((InternalEObject)this.swHostVariable).eInverseRemove((InternalEObject)this, 4, SwVariableRef.class, msgs);
            }
            if (newSwHostVariable != null) {
                msgs = ((InternalEObject)newSwHostVariable).eInverseAdd((InternalEObject)this, 4, SwVariableRef.class, msgs);
            }
            if ((msgs = this.basicSetSwHostVariable(newSwHostVariable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newSwHostVariable, (Object)newSwHostVariable));
        }
    }

    @Override
    public SwImplPolicyEnum getSwImplPolicy() {
        return this.swImplPolicy;
    }

    @Override
    public void setSwImplPolicy(SwImplPolicyEnum newSwImplPolicy) {
        SwImplPolicyEnum oldSwImplPolicy = this.swImplPolicy;
        this.swImplPolicy = newSwImplPolicy == null ? SW_IMPL_POLICY_EDEFAULT : newSwImplPolicy;
        boolean oldSwImplPolicyESet = this.swImplPolicyESet;
        this.swImplPolicyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldSwImplPolicy, (Object)this.swImplPolicy, !oldSwImplPolicyESet));
        }
    }

    @Override
    public void unsetSwImplPolicy() {
        SwImplPolicyEnum oldSwImplPolicy = this.swImplPolicy;
        boolean oldSwImplPolicyESet = this.swImplPolicyESet;
        this.swImplPolicy = SW_IMPL_POLICY_EDEFAULT;
        this.swImplPolicyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldSwImplPolicy, (Object)SW_IMPL_POLICY_EDEFAULT, oldSwImplPolicyESet));
        }
    }

    @Override
    public boolean isSetSwImplPolicy() {
        return this.swImplPolicyESet;
    }

    @Override
    public SwPointer getSwPointer() {
        return this.swPointer;
    }

    public NotificationChain basicSetSwPointer(SwPointer newSwPointer, NotificationChain msgs) {
        SwPointer oldSwPointer = this.swPointer;
        this.swPointer = newSwPointer;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSwPointer, (Object)newSwPointer);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwPointer(SwPointer newSwPointer) {
        if (newSwPointer != this.swPointer) {
            NotificationChain msgs = null;
            if (this.swPointer != null) {
                msgs = ((InternalEObject)this.swPointer).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newSwPointer != null) {
                msgs = ((InternalEObject)newSwPointer).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetSwPointer(newSwPointer, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newSwPointer, (Object)newSwPointer));
        }
    }

    @Override
    public SwRecordLayout getSwRecordLayout() {
        if (this.swRecordLayout != null && this.swRecordLayout.eIsProxy()) {
            InternalEObject oldSwRecordLayout = (InternalEObject)this.swRecordLayout;
            this.swRecordLayout = (SwRecordLayout)this.eResolveProxy(oldSwRecordLayout);
            if (this.swRecordLayout != oldSwRecordLayout && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldSwRecordLayout, (Object)this.swRecordLayout));
            }
        }
        return this.swRecordLayout;
    }

    public SwRecordLayout basicGetSwRecordLayout() {
        return this.swRecordLayout;
    }

    @Override
    public void setSwRecordLayout(SwRecordLayout newSwRecordLayout) {
        SwRecordLayout oldSwRecordLayout = this.swRecordLayout;
        this.swRecordLayout = newSwRecordLayout;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSwRecordLayout, (Object)this.swRecordLayout));
        }
    }

    @Override
    public Unit getUnit() {
        if (this.unit != null && this.unit.eIsProxy()) {
            InternalEObject oldUnit = (InternalEObject)this.unit;
            this.unit = (Unit)this.eResolveProxy(oldUnit);
            if (this.unit != oldUnit && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 25, (Object)oldUnit, (Object)this.unit));
            }
        }
        return this.unit;
    }

    public Unit basicGetUnit() {
        return this.unit;
    }

    @Override
    public void setUnit(Unit newUnit) {
        Unit oldUnit = this.unit;
        this.unit = newUnit;
        AutosarObjectUtil.setDest((EObject)this, (int)25, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldUnit, (Object)this.unit));
        }
    }

    @Override
    public SwVariableAccessImplPolicyEnum getSwVariableAccessImplPolicy() {
        return this.swVariableAccessImplPolicy;
    }

    @Override
    public void setSwVariableAccessImplPolicy(SwVariableAccessImplPolicyEnum newSwVariableAccessImplPolicy) {
        SwVariableAccessImplPolicyEnum oldSwVariableAccessImplPolicy = this.swVariableAccessImplPolicy;
        this.swVariableAccessImplPolicy = newSwVariableAccessImplPolicy == null ? SW_VARIABLE_ACCESS_IMPL_POLICY_EDEFAULT : newSwVariableAccessImplPolicy;
        boolean oldSwVariableAccessImplPolicyESet = this.swVariableAccessImplPolicyESet;
        this.swVariableAccessImplPolicyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldSwVariableAccessImplPolicy, (Object)this.swVariableAccessImplPolicy, !oldSwVariableAccessImplPolicyESet));
        }
    }

    @Override
    public void unsetSwVariableAccessImplPolicy() {
        SwVariableAccessImplPolicyEnum oldSwVariableAccessImplPolicy = this.swVariableAccessImplPolicy;
        boolean oldSwVariableAccessImplPolicyESet = this.swVariableAccessImplPolicyESet;
        this.swVariableAccessImplPolicy = SW_VARIABLE_ACCESS_IMPL_POLICY_EDEFAULT;
        this.swVariableAccessImplPolicyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldSwVariableAccessImplPolicy, (Object)SW_VARIABLE_ACCESS_IMPL_POLICY_EDEFAULT, oldSwVariableAccessImplPolicyESet));
        }
    }

    @Override
    public boolean isSetSwVariableAccessImplPolicy() {
        return this.swVariableAccessImplPolicyESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return ((InternalEList)this.getAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
            case 10: {
                if (this.swBitRepresentation != null) {
                    msgs = ((InternalEObject)this.swBitRepresentation).eInverseRemove((InternalEObject)this, -11, null, msgs);
                }
                return this.basicSetSwBitRepresentation((SwBitRepresentation)otherEnd, msgs);
            }
            case 13: {
                if (this.swCalprmAxisSet != null) {
                    msgs = ((InternalEObject)this.swCalprmAxisSet).eInverseRemove((InternalEObject)this, -14, null, msgs);
                }
                return this.basicSetSwCalprmAxisSet((SwCalprmAxisSet)otherEnd, msgs);
            }
            case 14: {
                if (this.swTextProps != null) {
                    msgs = ((InternalEObject)this.swTextProps).eInverseRemove((InternalEObject)this, -15, null, msgs);
                }
                return this.basicSetSwTextProps((SwTextProps)otherEnd, msgs);
            }
            case 18: {
                if (this.swDataDependency != null) {
                    msgs = ((InternalEObject)this.swDataDependency).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetSwDataDependency((SwDataDependency)otherEnd, msgs);
            }
            case 21: {
                if (this.swHostVariable != null) {
                    msgs = ((InternalEObject)this.swHostVariable).eInverseRemove((InternalEObject)this, -22, null, msgs);
                }
                return this.basicSetSwHostVariable((SwVariableRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return ((InternalEList)this.getAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 10: {
                return this.basicSetSwBitRepresentation(null, msgs);
            }
            case 12: {
                return this.basicSetSwValueBlockSize(null, msgs);
            }
            case 13: {
                return this.basicSetSwCalprmAxisSet(null, msgs);
            }
            case 14: {
                return this.basicSetSwTextProps(null, msgs);
            }
            case 18: {
                return this.basicSetSwDataDependency(null, msgs);
            }
            case 20: {
                return this.basicSetInvalidValue(null, msgs);
            }
            case 21: {
                return this.basicSetSwHostVariable(null, msgs);
            }
            case 23: {
                return this.basicSetSwPointer(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetBaseType();
            }
            case 5: {
                return this.gGetInvalidValue();
            }
            case 6: {
                return this.gGetCompuMethod();
            }
            case 7: {
                return this.getAnnotations();
            }
            case 8: {
                if (resolve) {
                    return this.getSwAddrMethod();
                }
                return this.basicGetSwAddrMethod();
            }
            case 9: {
                if (resolve) {
                    return this.getBaseType();
                }
                return this.basicGetBaseType();
            }
            case 10: {
                return this.getSwBitRepresentation();
            }
            case 11: {
                return this.getSwCalibrationAccess();
            }
            case 12: {
                return this.getSwValueBlockSize();
            }
            case 13: {
                return this.getSwCalprmAxisSet();
            }
            case 14: {
                return this.getSwTextProps();
            }
            case 15: {
                if (resolve) {
                    return this.getSwCodeSyntax();
                }
                return this.basicGetSwCodeSyntax();
            }
            case 16: {
                if (resolve) {
                    return this.getCompuMethod();
                }
                return this.basicGetCompuMethod();
            }
            case 17: {
                if (resolve) {
                    return this.getDataConstr();
                }
                return this.basicGetDataConstr();
            }
            case 18: {
                return this.getSwDataDependency();
            }
            case 19: {
                return this.getDisplayFormat();
            }
            case 20: {
                return this.getInvalidValue();
            }
            case 21: {
                return this.getSwHostVariable();
            }
            case 22: {
                return this.getSwImplPolicy();
            }
            case 23: {
                return this.getSwPointer();
            }
            case 24: {
                if (resolve) {
                    return this.getSwRecordLayout();
                }
                return this.basicGetSwRecordLayout();
            }
            case 25: {
                if (resolve) {
                    return this.getUnit();
                }
                return this.basicGetUnit();
            }
            case 26: {
                return this.getSwVariableAccessImplPolicy();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetBaseType((GSwBaseType)newValue);
                return;
            }
            case 5: {
                this.gSetInvalidValue((GValueSpecification)newValue);
                return;
            }
            case 6: {
                this.gSetCompuMethod((GCompuMethod)newValue);
                return;
            }
            case 7: {
                this.getAnnotations().clear();
                this.getAnnotations().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setSwAddrMethod((SwAddrMethod)newValue);
                return;
            }
            case 9: {
                this.setBaseType((SwBaseType)newValue);
                return;
            }
            case 10: {
                this.setSwBitRepresentation((SwBitRepresentation)newValue);
                return;
            }
            case 11: {
                this.setSwCalibrationAccess((SwCalibrationAccessEnum)((Object)newValue));
                return;
            }
            case 12: {
                this.setSwValueBlockSize((SwArraysize)newValue);
                return;
            }
            case 13: {
                this.setSwCalprmAxisSet((SwCalprmAxisSet)newValue);
                return;
            }
            case 14: {
                this.setSwTextProps((SwTextProps)newValue);
                return;
            }
            case 15: {
                this.setSwCodeSyntax((SwCodeSyntax)newValue);
                return;
            }
            case 16: {
                this.setCompuMethod((CompuMethod)newValue);
                return;
            }
            case 17: {
                this.setDataConstr((DataConstr)newValue);
                return;
            }
            case 18: {
                this.setSwDataDependency((SwDataDependency)newValue);
                return;
            }
            case 19: {
                this.setDisplayFormat((String)newValue);
                return;
            }
            case 20: {
                this.setInvalidValue((PrimitiveSpecification)newValue);
                return;
            }
            case 21: {
                this.setSwHostVariable((SwVariableRef)newValue);
                return;
            }
            case 22: {
                this.setSwImplPolicy((SwImplPolicyEnum)((Object)newValue));
                return;
            }
            case 23: {
                this.setSwPointer((SwPointer)newValue);
                return;
            }
            case 24: {
                this.setSwRecordLayout((SwRecordLayout)newValue);
                return;
            }
            case 25: {
                this.setUnit((Unit)newValue);
                return;
            }
            case 26: {
                this.setSwVariableAccessImplPolicy((SwVariableAccessImplPolicyEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetBaseType(null);
                return;
            }
            case 5: {
                this.gSetInvalidValue(null);
                return;
            }
            case 6: {
                this.gSetCompuMethod(null);
                return;
            }
            case 7: {
                this.getAnnotations().clear();
                return;
            }
            case 8: {
                this.setSwAddrMethod(null);
                return;
            }
            case 9: {
                this.setBaseType(null);
                return;
            }
            case 10: {
                this.setSwBitRepresentation(null);
                return;
            }
            case 11: {
                this.unsetSwCalibrationAccess();
                return;
            }
            case 12: {
                this.setSwValueBlockSize(null);
                return;
            }
            case 13: {
                this.setSwCalprmAxisSet(null);
                return;
            }
            case 14: {
                this.setSwTextProps(null);
                return;
            }
            case 15: {
                this.setSwCodeSyntax(null);
                return;
            }
            case 16: {
                this.setCompuMethod(null);
                return;
            }
            case 17: {
                this.setDataConstr(null);
                return;
            }
            case 18: {
                this.setSwDataDependency(null);
                return;
            }
            case 19: {
                this.unsetDisplayFormat();
                return;
            }
            case 20: {
                this.setInvalidValue(null);
                return;
            }
            case 21: {
                this.setSwHostVariable(null);
                return;
            }
            case 22: {
                this.unsetSwImplPolicy();
                return;
            }
            case 23: {
                this.setSwPointer(null);
                return;
            }
            case 24: {
                this.setSwRecordLayout(null);
                return;
            }
            case 25: {
                this.setUnit(null);
                return;
            }
            case 26: {
                this.unsetSwVariableAccessImplPolicy();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetBaseType() != null;
            }
            case 5: {
                return this.gGetInvalidValue() != null;
            }
            case 6: {
                return this.gGetCompuMethod() != null;
            }
            case 7: {
                return this.annotations != null && !this.annotations.isEmpty();
            }
            case 8: {
                return this.swAddrMethod != null;
            }
            case 9: {
                return this.baseType != null;
            }
            case 10: {
                return this.swBitRepresentation != null;
            }
            case 11: {
                return this.isSetSwCalibrationAccess();
            }
            case 12: {
                return this.swValueBlockSize != null;
            }
            case 13: {
                return this.swCalprmAxisSet != null;
            }
            case 14: {
                return this.swTextProps != null;
            }
            case 15: {
                return this.swCodeSyntax != null;
            }
            case 16: {
                return this.compuMethod != null;
            }
            case 17: {
                return this.dataConstr != null;
            }
            case 18: {
                return this.swDataDependency != null;
            }
            case 19: {
                return this.isSetDisplayFormat();
            }
            case 20: {
                return this.invalidValue != null;
            }
            case 21: {
                return this.swHostVariable != null;
            }
            case 22: {
                return this.isSetSwImplPolicy();
            }
            case 23: {
                return this.swPointer != null;
            }
            case 24: {
                return this.swRecordLayout != null;
            }
            case 25: {
                return this.unit != null;
            }
            case 26: {
                return this.isSetSwVariableAccessImplPolicy();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GSwDataDefPropsConditional.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
                case 6: {
                    return 4;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GSwDataDefPropsConditional.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
                case 4: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (swCalibrationAccess: ");
        if (this.swCalibrationAccessESet) {
            result.append((Object)this.swCalibrationAccess);
        } else {
            result.append("<unset>");
        }
        result.append(", displayFormat: ");
        if (this.displayFormatESet) {
            result.append(this.displayFormat);
        } else {
            result.append("<unset>");
        }
        result.append(", swImplPolicy: ");
        if (this.swImplPolicyESet) {
            result.append((Object)this.swImplPolicy);
        } else {
            result.append("<unset>");
        }
        result.append(", swVariableAccessImplPolicy: ");
        if (this.swVariableAccessImplPolicyESet) {
            result.append((Object)this.swVariableAccessImplPolicy);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

