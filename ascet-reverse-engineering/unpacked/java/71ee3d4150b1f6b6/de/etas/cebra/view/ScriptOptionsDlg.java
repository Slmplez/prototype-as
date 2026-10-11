/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.view;

import de.etas.cebra.scripts.Script;
import de.etas.cebra.scripts.ScriptScheduler;
import de.etas.cebra.view.CebraWarningDlg;
import de.etas.cebra.view.NewScriptDlg;
import de.etas.util.Utilities;
import java.awt.Frame;
import java.awt.TextComponent;

public class ScriptOptionsDlg
extends NewScriptDlg {
    private Script script = null;

    public ScriptOptionsDlg(Script s, Frame p) {
        super(s.getRegisteredClass(), p);
        this.script = s;
        this.update();
        this.getDialog().setTitle("Options for " + this.script.getName());
    }

    protected void onOkButton() {
        String scriptName = null;
        long sampleTime = 0L;
        scriptName = this.getScriptNameText().getText();
        if (scriptName == null) {
            new CebraWarningDlg("You have to enter a name for the script.", this.parent);
            return;
        }
        if (scriptName.length() < 3) {
            new CebraWarningDlg("The script name must have a length of at least 3 characters.", this.parent);
            return;
        }
        if (!scriptName.equals(this.script.getName())) {
            if (!Utilities.checkNameString(scriptName)) {
                ((TextComponent)this.getScriptNameText()).setText(Utilities.trimString(scriptName));
                this.getScriptNameText().selectAll();
                this.getScriptNameText().requestFocus();
                return;
            }
            if (Script.getScriptByName(scriptName) != null) {
                new CebraWarningDlg("The script name '" + this.getScriptNameText().getText() + "' is already in use.", this.parent);
                this.getScriptNameText().selectAll();
                this.getScriptNameText().requestFocus();
                return;
            }
        }
        this.script.setName(scriptName);
        ScriptScheduler.registerScript(scriptName, this.script.getClass().getName(), this.getAutoCheck().getState());
        if (this.getPeriodicCheck().getState()) {
            try {
                sampleTime = Long.parseLong(this.getSampleTimeText().getText());
            }
            catch (NumberFormatException numberFormatException) {
                new CebraWarningDlg("The sample time must be specified as an integer multiple of milli seconds. '" + this.getSampleTimeText().getText() + "' is not a valid long integer.", this.parent);
                return;
            }
            this.script.setSampleTime(sampleTime);
            this.script.setPeriodic();
        } else {
            this.script.resetPeriodic();
        }
        if (this.getStartupCheck().getState()) {
            ScriptScheduler.addStartupScript(scriptName);
            this.script.setStartup(true);
        } else {
            ScriptScheduler.removeStartupScript(scriptName);
            this.script.setStartup(false);
        }
        this.onCancelButton();
    }

    private void update() {
        this.getAutoCheck().setState(this.script.isAuto());
        ((TextComponent)this.getScriptNameText()).setText(this.script.getName());
        this.getStartupCheck().setState(this.script.isStartup());
        ((TextComponent)this.getSampleTimeText()).setText("" + this.script.getSampleTime());
        if (this.script.isPeriodic()) {
            this.getPeriodicCheck().setState(true);
            this.getSampleTimeLabel().setEnabled(true);
            this.getSampleTimeText().setEnabled(true);
        } else {
            this.getPeriodicCheck().setState(false);
            this.getSampleTimeLabel().setEnabled(false);
            this.getSampleTimeText().setEnabled(false);
        }
    }
}

