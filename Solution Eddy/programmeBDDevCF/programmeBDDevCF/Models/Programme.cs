namespace programmeBDDevCF.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Programme")]
    public partial class Programme
    {
        [Key]
        public int idProgramme { get; set; }

        [Required]
        [StringLength(4)]
        public string annee { get; set; }

        [StringLength(50)]
        public string nom { get; set; }

        [StringLength(6)]
        public string nbUnite { get; set; }

        [Required]
        [StringLength(3)]
        public string codeSpecialisation { get; set; }

        [StringLength(30)]
        public string specialisation { get; set; }

        public int? nbHeurefrmGenerale { get; set; }

        public int? nbHeurefrmSpecifique { get; set; }

        [StringLength(300)]
        public string condition { get; set; }

        [StringLength(50)]
        public string sanction { get; set; }

        [StringLength(200)]
        public string commentaire { get; set; }

        [StringLength(200)]
        public string docMinistere_path { get; set; }

        public DateTime? dateValidation { get; set; }

        [Required]
        [StringLength(3)]
        public string codeProgramme { get; set; }

        public virtual EnteteProgramme EnteteProgramme { get; set; }
    }
}
