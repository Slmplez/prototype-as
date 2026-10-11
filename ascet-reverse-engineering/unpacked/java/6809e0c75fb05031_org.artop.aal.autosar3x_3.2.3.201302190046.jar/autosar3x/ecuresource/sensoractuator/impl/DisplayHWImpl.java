/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.sensoractuator.impl;

import autosar3x.ecuresource.sensoractuator.DisplayHW;
import autosar3x.ecuresource.sensoractuator.DisplayHwColourEnum;
import autosar3x.ecuresource.sensoractuator.DisplayHwTypeOfCharactersEnum;
import autosar3x.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar3x.ecuresource.sensoractuator.impl.SensorActuatorHWImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DisplayHWImpl
extends SensorActuatorHWImpl
implements DisplayHW {
    protected static final Boolean BACKLIGHT_EDEFAULT = Boolean.FALSE;
    protected Boolean backlight = BACKLIGHT_EDEFAULT;
    protected boolean backlightESet;
    protected static final Double BRIGHTNESS_EDEFAULT = new Double(0.0);
    protected Double brightness = BRIGHTNESS_EDEFAULT;
    protected boolean brightnessESet;
    protected static final DisplayHwTypeOfCharactersEnum BTYPE_OF_CHARACTERS_EDEFAULT = DisplayHwTypeOfCharactersEnum.NUMERICAL;
    protected DisplayHwTypeOfCharactersEnum btypeOfCharacters = BTYPE_OF_CHARACTERS_EDEFAULT;
    protected boolean btypeOfCharactersESet;
    protected static final Boolean CHARACTER_GENERATOR_EDEFAULT = Boolean.FALSE;
    protected Boolean characterGenerator = CHARACTER_GENERATOR_EDEFAULT;
    protected boolean characterGeneratorESet;
    protected static final String CHARACTER_SET_EDEFAULT = "";
    protected String characterSet = "";
    protected boolean characterSetESet;
    protected static final DisplayHwColourEnum COLOUR_EDEFAULT = DisplayHwColourEnum.COLOUR;
    protected DisplayHwColourEnum colour = COLOUR_EDEFAULT;
    protected boolean colourESet;
    protected static final Double RESOLUTION_RATION_EDEFAULT = new Double(0.0);
    protected Double resolutionRation = RESOLUTION_RATION_EDEFAULT;
    protected boolean resolutionRationESet;
    protected static final Integer RESOLUTION_X_EDEFAULT = new Integer(0);
    protected Integer resolutionX = RESOLUTION_X_EDEFAULT;
    protected boolean resolutionXESet;
    protected static final Integer RESOLUTION_Y_EDEFAULT = new Integer(0);
    protected Integer resolutionY = RESOLUTION_Y_EDEFAULT;
    protected boolean resolutionYESet;
    protected static final Double RESPONSE_TIME_EDEFAULT = new Double(0.0);
    protected Double responseTime = RESPONSE_TIME_EDEFAULT;
    protected boolean responseTimeESet;
    protected static final Integer VIEWING_ANGLE_EDEFAULT = new Integer(0);
    protected Integer viewingAngle = VIEWING_ANGLE_EDEFAULT;
    protected boolean viewingAngleESet;

    protected DisplayHWImpl() {
    }

    protected EClass eStaticClass() {
        return SensoractuatorPackage.Literals.DISPLAY_HW;
    }

    public Boolean getBacklight() {
        return this.backlight;
    }

    public void setBacklight(Boolean newBacklight) {
        Boolean oldBacklight = this.backlight;
        this.backlight = newBacklight;
        boolean oldBacklightESet = this.backlightESet;
        this.backlightESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldBacklight, (Object)this.backlight, !oldBacklightESet));
        }
    }

    public void unsetBacklight() {
        Boolean oldBacklight = this.backlight;
        boolean oldBacklightESet = this.backlightESet;
        this.backlight = BACKLIGHT_EDEFAULT;
        this.backlightESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldBacklight, (Object)BACKLIGHT_EDEFAULT, oldBacklightESet));
        }
    }

    public boolean isSetBacklight() {
        return this.backlightESet;
    }

    public Double getBrightness() {
        return this.brightness;
    }

    public void setBrightness(Double newBrightness) {
        Double oldBrightness = this.brightness;
        this.brightness = newBrightness;
        boolean oldBrightnessESet = this.brightnessESet;
        this.brightnessESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldBrightness, (Object)this.brightness, !oldBrightnessESet));
        }
    }

    public void unsetBrightness() {
        Double oldBrightness = this.brightness;
        boolean oldBrightnessESet = this.brightnessESet;
        this.brightness = BRIGHTNESS_EDEFAULT;
        this.brightnessESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldBrightness, (Object)BRIGHTNESS_EDEFAULT, oldBrightnessESet));
        }
    }

    public boolean isSetBrightness() {
        return this.brightnessESet;
    }

    public DisplayHwTypeOfCharactersEnum getBtypeOfCharacters() {
        return this.btypeOfCharacters;
    }

    public void setBtypeOfCharacters(DisplayHwTypeOfCharactersEnum newBtypeOfCharacters) {
        DisplayHwTypeOfCharactersEnum oldBtypeOfCharacters = this.btypeOfCharacters;
        this.btypeOfCharacters = newBtypeOfCharacters == null ? BTYPE_OF_CHARACTERS_EDEFAULT : newBtypeOfCharacters;
        boolean oldBtypeOfCharactersESet = this.btypeOfCharactersESet;
        this.btypeOfCharactersESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldBtypeOfCharacters, (Object)this.btypeOfCharacters, !oldBtypeOfCharactersESet));
        }
    }

    public void unsetBtypeOfCharacters() {
        DisplayHwTypeOfCharactersEnum oldBtypeOfCharacters = this.btypeOfCharacters;
        boolean oldBtypeOfCharactersESet = this.btypeOfCharactersESet;
        this.btypeOfCharacters = BTYPE_OF_CHARACTERS_EDEFAULT;
        this.btypeOfCharactersESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldBtypeOfCharacters, (Object)BTYPE_OF_CHARACTERS_EDEFAULT, oldBtypeOfCharactersESet));
        }
    }

    public boolean isSetBtypeOfCharacters() {
        return this.btypeOfCharactersESet;
    }

    public Boolean getCharacterGenerator() {
        return this.characterGenerator;
    }

    public void setCharacterGenerator(Boolean newCharacterGenerator) {
        Boolean oldCharacterGenerator = this.characterGenerator;
        this.characterGenerator = newCharacterGenerator;
        boolean oldCharacterGeneratorESet = this.characterGeneratorESet;
        this.characterGeneratorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldCharacterGenerator, (Object)this.characterGenerator, !oldCharacterGeneratorESet));
        }
    }

    public void unsetCharacterGenerator() {
        Boolean oldCharacterGenerator = this.characterGenerator;
        boolean oldCharacterGeneratorESet = this.characterGeneratorESet;
        this.characterGenerator = CHARACTER_GENERATOR_EDEFAULT;
        this.characterGeneratorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldCharacterGenerator, (Object)CHARACTER_GENERATOR_EDEFAULT, oldCharacterGeneratorESet));
        }
    }

    public boolean isSetCharacterGenerator() {
        return this.characterGeneratorESet;
    }

    public String getCharacterSet() {
        return this.characterSet;
    }

    public void setCharacterSet(String newCharacterSet) {
        String oldCharacterSet = this.characterSet;
        this.characterSet = newCharacterSet;
        boolean oldCharacterSetESet = this.characterSetESet;
        this.characterSetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldCharacterSet, (Object)this.characterSet, !oldCharacterSetESet));
        }
    }

    public void unsetCharacterSet() {
        String oldCharacterSet = this.characterSet;
        boolean oldCharacterSetESet = this.characterSetESet;
        this.characterSet = CHARACTER_SET_EDEFAULT;
        this.characterSetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldCharacterSet, (Object)CHARACTER_SET_EDEFAULT, oldCharacterSetESet));
        }
    }

    public boolean isSetCharacterSet() {
        return this.characterSetESet;
    }

    public DisplayHwColourEnum getColour() {
        return this.colour;
    }

    public void setColour(DisplayHwColourEnum newColour) {
        DisplayHwColourEnum oldColour = this.colour;
        this.colour = newColour == null ? COLOUR_EDEFAULT : newColour;
        boolean oldColourESet = this.colourESet;
        this.colourESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldColour, (Object)this.colour, !oldColourESet));
        }
    }

    public void unsetColour() {
        DisplayHwColourEnum oldColour = this.colour;
        boolean oldColourESet = this.colourESet;
        this.colour = COLOUR_EDEFAULT;
        this.colourESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldColour, (Object)COLOUR_EDEFAULT, oldColourESet));
        }
    }

    public boolean isSetColour() {
        return this.colourESet;
    }

    public Double getResolutionRation() {
        return this.resolutionRation;
    }

    public void setResolutionRation(Double newResolutionRation) {
        Double oldResolutionRation = this.resolutionRation;
        this.resolutionRation = newResolutionRation;
        boolean oldResolutionRationESet = this.resolutionRationESet;
        this.resolutionRationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldResolutionRation, (Object)this.resolutionRation, !oldResolutionRationESet));
        }
    }

    public void unsetResolutionRation() {
        Double oldResolutionRation = this.resolutionRation;
        boolean oldResolutionRationESet = this.resolutionRationESet;
        this.resolutionRation = RESOLUTION_RATION_EDEFAULT;
        this.resolutionRationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldResolutionRation, (Object)RESOLUTION_RATION_EDEFAULT, oldResolutionRationESet));
        }
    }

    public boolean isSetResolutionRation() {
        return this.resolutionRationESet;
    }

    public Integer getResolutionX() {
        return this.resolutionX;
    }

    public void setResolutionX(Integer newResolutionX) {
        Integer oldResolutionX = this.resolutionX;
        this.resolutionX = newResolutionX;
        boolean oldResolutionXESet = this.resolutionXESet;
        this.resolutionXESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldResolutionX, (Object)this.resolutionX, !oldResolutionXESet));
        }
    }

    public void unsetResolutionX() {
        Integer oldResolutionX = this.resolutionX;
        boolean oldResolutionXESet = this.resolutionXESet;
        this.resolutionX = RESOLUTION_X_EDEFAULT;
        this.resolutionXESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldResolutionX, (Object)RESOLUTION_X_EDEFAULT, oldResolutionXESet));
        }
    }

    public boolean isSetResolutionX() {
        return this.resolutionXESet;
    }

    public Integer getResolutionY() {
        return this.resolutionY;
    }

    public void setResolutionY(Integer newResolutionY) {
        Integer oldResolutionY = this.resolutionY;
        this.resolutionY = newResolutionY;
        boolean oldResolutionYESet = this.resolutionYESet;
        this.resolutionYESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldResolutionY, (Object)this.resolutionY, !oldResolutionYESet));
        }
    }

    public void unsetResolutionY() {
        Integer oldResolutionY = this.resolutionY;
        boolean oldResolutionYESet = this.resolutionYESet;
        this.resolutionY = RESOLUTION_Y_EDEFAULT;
        this.resolutionYESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 38, (Object)oldResolutionY, (Object)RESOLUTION_Y_EDEFAULT, oldResolutionYESet));
        }
    }

    public boolean isSetResolutionY() {
        return this.resolutionYESet;
    }

    public Double getResponseTime() {
        return this.responseTime;
    }

    public void setResponseTime(Double newResponseTime) {
        Double oldResponseTime = this.responseTime;
        this.responseTime = newResponseTime;
        boolean oldResponseTimeESet = this.responseTimeESet;
        this.responseTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 39, (Object)oldResponseTime, (Object)this.responseTime, !oldResponseTimeESet));
        }
    }

    public void unsetResponseTime() {
        Double oldResponseTime = this.responseTime;
        boolean oldResponseTimeESet = this.responseTimeESet;
        this.responseTime = RESPONSE_TIME_EDEFAULT;
        this.responseTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 39, (Object)oldResponseTime, (Object)RESPONSE_TIME_EDEFAULT, oldResponseTimeESet));
        }
    }

    public boolean isSetResponseTime() {
        return this.responseTimeESet;
    }

    public Integer getViewingAngle() {
        return this.viewingAngle;
    }

    public void setViewingAngle(Integer newViewingAngle) {
        Integer oldViewingAngle = this.viewingAngle;
        this.viewingAngle = newViewingAngle;
        boolean oldViewingAngleESet = this.viewingAngleESet;
        this.viewingAngleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 40, (Object)oldViewingAngle, (Object)this.viewingAngle, !oldViewingAngleESet));
        }
    }

    public void unsetViewingAngle() {
        Integer oldViewingAngle = this.viewingAngle;
        boolean oldViewingAngleESet = this.viewingAngleESet;
        this.viewingAngle = VIEWING_ANGLE_EDEFAULT;
        this.viewingAngleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 40, (Object)oldViewingAngle, (Object)VIEWING_ANGLE_EDEFAULT, oldViewingAngleESet));
        }
    }

    public boolean isSetViewingAngle() {
        return this.viewingAngleESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 30: {
                return this.getBacklight();
            }
            case 31: {
                return this.getBrightness();
            }
            case 32: {
                return this.getBtypeOfCharacters();
            }
            case 33: {
                return this.getCharacterGenerator();
            }
            case 34: {
                return this.getCharacterSet();
            }
            case 35: {
                return this.getColour();
            }
            case 36: {
                return this.getResolutionRation();
            }
            case 37: {
                return this.getResolutionX();
            }
            case 38: {
                return this.getResolutionY();
            }
            case 39: {
                return this.getResponseTime();
            }
            case 40: {
                return this.getViewingAngle();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 30: {
                this.setBacklight((Boolean)newValue);
                return;
            }
            case 31: {
                this.setBrightness((Double)newValue);
                return;
            }
            case 32: {
                this.setBtypeOfCharacters((DisplayHwTypeOfCharactersEnum)((Object)newValue));
                return;
            }
            case 33: {
                this.setCharacterGenerator((Boolean)newValue);
                return;
            }
            case 34: {
                this.setCharacterSet((String)newValue);
                return;
            }
            case 35: {
                this.setColour((DisplayHwColourEnum)((Object)newValue));
                return;
            }
            case 36: {
                this.setResolutionRation((Double)newValue);
                return;
            }
            case 37: {
                this.setResolutionX((Integer)newValue);
                return;
            }
            case 38: {
                this.setResolutionY((Integer)newValue);
                return;
            }
            case 39: {
                this.setResponseTime((Double)newValue);
                return;
            }
            case 40: {
                this.setViewingAngle((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 30: {
                this.unsetBacklight();
                return;
            }
            case 31: {
                this.unsetBrightness();
                return;
            }
            case 32: {
                this.unsetBtypeOfCharacters();
                return;
            }
            case 33: {
                this.unsetCharacterGenerator();
                return;
            }
            case 34: {
                this.unsetCharacterSet();
                return;
            }
            case 35: {
                this.unsetColour();
                return;
            }
            case 36: {
                this.unsetResolutionRation();
                return;
            }
            case 37: {
                this.unsetResolutionX();
                return;
            }
            case 38: {
                this.unsetResolutionY();
                return;
            }
            case 39: {
                this.unsetResponseTime();
                return;
            }
            case 40: {
                this.unsetViewingAngle();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 30: {
                return this.isSetBacklight();
            }
            case 31: {
                return this.isSetBrightness();
            }
            case 32: {
                return this.isSetBtypeOfCharacters();
            }
            case 33: {
                return this.isSetCharacterGenerator();
            }
            case 34: {
                return this.isSetCharacterSet();
            }
            case 35: {
                return this.isSetColour();
            }
            case 36: {
                return this.isSetResolutionRation();
            }
            case 37: {
                return this.isSetResolutionX();
            }
            case 38: {
                return this.isSetResolutionY();
            }
            case 39: {
                return this.isSetResponseTime();
            }
            case 40: {
                return this.isSetViewingAngle();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (backlight: ");
        if (this.backlightESet) {
            result.append(this.backlight);
        } else {
            result.append("<unset>");
        }
        result.append(", brightness: ");
        if (this.brightnessESet) {
            result.append(this.brightness);
        } else {
            result.append("<unset>");
        }
        result.append(", btypeOfCharacters: ");
        if (this.btypeOfCharactersESet) {
            result.append((Object)this.btypeOfCharacters);
        } else {
            result.append("<unset>");
        }
        result.append(", characterGenerator: ");
        if (this.characterGeneratorESet) {
            result.append(this.characterGenerator);
        } else {
            result.append("<unset>");
        }
        result.append(", characterSet: ");
        if (this.characterSetESet) {
            result.append(this.characterSet);
        } else {
            result.append("<unset>");
        }
        result.append(", colour: ");
        if (this.colourESet) {
            result.append((Object)this.colour);
        } else {
            result.append("<unset>");
        }
        result.append(", resolutionRation: ");
        if (this.resolutionRationESet) {
            result.append(this.resolutionRation);
        } else {
            result.append("<unset>");
        }
        result.append(", resolutionX: ");
        if (this.resolutionXESet) {
            result.append(this.resolutionX);
        } else {
            result.append("<unset>");
        }
        result.append(", resolutionY: ");
        if (this.resolutionYESet) {
            result.append(this.resolutionY);
        } else {
            result.append("<unset>");
        }
        result.append(", responseTime: ");
        if (this.responseTimeESet) {
            result.append(this.responseTime);
        } else {
            result.append("<unset>");
        }
        result.append(", viewingAngle: ");
        if (this.viewingAngleESet) {
            result.append(this.viewingAngle);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

