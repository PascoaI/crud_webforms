using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace crud_webforms.Models
{
    [Table("Clientes")]
    public class Cliente
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CLI_ID { get; set; }

        [Required]
        [StringLength(100)] // Limite para o tamanho do nome, se necessário
        public string CLI_NOME { get; set; }

        [Required]
        [DataType(DataType.Date)]
        public DateTime CLI_DATANASCIMENTO { get; set; }

        [Required]
        public bool CLI_ATIVO { get; set; }
    }
}
