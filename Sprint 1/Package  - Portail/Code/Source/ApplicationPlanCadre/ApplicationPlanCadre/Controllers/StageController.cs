﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ApplicationPlanCadre.Controllers
{
    public class StageController : Controller
    {
        [Authorize]
        // GET: Stage
        public ActionResult indexStage()
        {
            return View();
        }
    }
}