-- | The environment that contains both the view and the model.
--
module Hails.MVC.DefaultGtkEnvironment
   ( view
   , GEnv.model
   , GEnv.createCEnv
   , GEnv.installCondition
   , GEnv.installConditions
   )
  where

-- Internal libraries
import qualified Graphics.UI.Gtk.GtkView              as GtkView
import qualified Hails.MVC.GenericCombinedEnvironment as GEnv
import Hails.MVC.Model.ReactiveModel

view :: (GtkView.GtkGUI a, Event c) => GEnv.CEnv a b c d -> a
view = GtkView.getGUI . GEnv.view
